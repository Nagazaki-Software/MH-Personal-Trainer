// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fl_chart/fl_chart.dart';
import 'package:cloud_firestore/cloud_firestore.dart' show Timestamp;
import 'dart:math' as math;

class ChartBar extends StatefulWidget {
  const ChartBar({
    super.key,
    this.width,
    this.height,
    this.usersRecords, // Document Records (lista)
    this.topN, // opcional: limitar nº de dias exibidos
  });

  final double? width;
  final double? height;
  final List<UsersRecord>? usersRecords;
  final int? topN;

  @override
  State<ChartBar> createState() => _ChartBarState();
}

class _ChartBarState extends State<ChartBar> {
  static const _cPrimary = Color(0xFF002A5D);
  static const _cSecondary = Color(0xFF0048A9);
  static const _cBg = Colors.white;

  // Série agregada (dia -> contagem) e dados derivados
  List<MapEntry<DateTime, int>> _series = [];
  List<String> _labels = [];
  List<double> _values = [];
  double _maxY = 0;

  @override
  void initState() {
    super.initState();
    _recompute(from: widget);
  }

  @override
  void didUpdateWidget(covariant ChartBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Recalcula quando chegar dado novo ou mudar o topN
    if (oldWidget.usersRecords != widget.usersRecords ||
        (oldWidget.usersRecords?.length ?? -1) !=
            (widget.usersRecords?.length ?? -2) ||
        oldWidget.topN != widget.topN) {
      _recompute(from: widget);
      setState(() {});
    }
  }

  void _recompute({required ChartBar from}) {
    final input = from.usersRecords ?? const <UsersRecord>[];

    // 1) agrega contagem por dia
    final counts = <DateTime, int>{};
    for (final r in input) {
      final d = _extractDate(r);
      if (d == null) continue;
      final day = DateTime(d.year, d.month, d.day);
      counts[day] = (counts[day] ?? 0) + 1;
    }

    _series = counts.entries.toList()..sort((a, b) => a.key.compareTo(b.key));

    // 2) aplica limite (topN mais recentes)
    final take = from.topN ?? _series.length;
    final sliced = _series.length > take
        ? _series.sublist(_series.length - take)
        : _series;

    // 3) deriva labels/values
    _labels = sliced.map((e) => _fmtDay(e.key)).toList();
    _values = sliced.map((e) => e.value.toDouble()).toList();
    _maxY = _values.isEmpty ? 0 : _values.reduce(math.max);
  }

  /// Converte vários formatos de data para DateTime.
  DateTime? _toDate(dynamic v) {
    if (v == null) return null;
    if (v is DateTime) return v;
    if (v is Timestamp) return v.toDate();
    if (v is int) {
      if (v >= 1000000000000) return DateTime.fromMillisecondsSinceEpoch(v);
      if (v >= 1000000000) return DateTime.fromMillisecondsSinceEpoch(v * 1000);
    }
    if (v is num) {
      final x = v.toInt();
      if (x >= 1000000000000) return DateTime.fromMillisecondsSinceEpoch(x);
      if (x >= 1000000000) return DateTime.fromMillisecondsSinceEpoch(x * 1000);
    }
    if (v is String) {
      final iso = DateTime.tryParse(v);
      if (iso != null) return iso;
      final re = RegExp(r'^(\d{1,2})[\/\-](\d{1,2})(?:[\/\-](\d{2,4}))?$');
      final m = re.firstMatch(v.trim());
      if (m != null) {
        final dd = int.parse(m.group(1)!);
        final mm = int.parse(m.group(2)!);
        final yy =
            m.group(3) != null ? int.parse(m.group(3)!) : DateTime.now().year;
        final year = yy < 100 ? 2000 + yy : yy;
        return DateTime(year, mm, dd);
      }
    }
    return null;
  }

  /// Tenta extrair DateTime de vários nomes de campo comuns.
  DateTime? _extractDate(dynamic r) {
    DateTime? tryField(dynamic getter()) {
      try {
        return _toDate(getter());
      } catch (_) {
        return null;
      }
    }

    // Adicionei mais variações para cobrir diferentes coleções (ex.: "treinos")
    return tryField(() => r.createdTime) ??
        tryField(() => r.createdAt) ??
        tryField(() => r.dataCriacao) ??
        tryField(() => r.timestamp) ??
        tryField(() => r.ts) ??
        tryField(() => r.joinedAt) ??
        tryField(() => r.data) ??
        tryField(() => r.dataTreino) ?? // <— novo
        tryField(() => r.data_treino) ?? // <— novo
        tryField(() => r.treinoData) ?? // <— novo
        tryField(() => r.dataRegistro) ??
        tryField(() => r.dataCadastro) ??
        tryField(() => r.created) ??
        tryField(() => r.createdDate) ??
        tryField(() => r.createdOn) ??
        tryField(() => r.created_time) ??
        tryField(() => r.date) ??
        tryField(() => r.dia) ??
        tryField(() => r.dt);
  }

  String _fmtDay(DateTime d) {
    final dd = d.day.toString().padLeft(2, '0');
    final mm = d.month.toString().padLeft(2, '0');
    return '$dd/$mm';
  }

  @override
  Widget build(BuildContext context) {
    if (_values.isEmpty) {
      return Container(
        width: widget.width ?? double.infinity,
        height: widget.height ?? 300,
        color: _cBg,
        alignment: Alignment.center,
        child:
            const Text('Sem dados para exibir', style: TextStyle(fontSize: 14)),
      );
    }

    final maxY = (_maxY <= 1 ? 1.0 : _maxY + (_maxY * 0.2));
    final step = (_labels.length <= 6) ? 1 : (_labels.length / 6).ceil();

    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 320,
      color: _cBg,
      padding: const EdgeInsets.fromLTRB(12, 8, 20, 12),
      child: BarChart(
        BarChartData(
          maxY: maxY,
          backgroundColor: _cBg,
          alignment: BarChartAlignment.spaceAround,
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            getDrawingHorizontalLine: (value) => FlLine(
              color: _cPrimary.withOpacity(0.08),
              strokeWidth: 1,
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border(
              bottom: BorderSide(color: _cPrimary.withOpacity(0.2), width: 1),
              left: BorderSide(color: _cPrimary.withOpacity(0.2), width: 1),
              right: const BorderSide(color: Colors.transparent, width: 0),
              top: const BorderSide(color: Colors.transparent, width: 0),
            ),
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 34,
                getTitlesWidget: (v, meta) => Text(
                  v % 1 == 0 ? v.toInt().toString() : '',
                  style: const TextStyle(color: _cPrimary, fontSize: 11),
                ),
              ),
            ),
            rightTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (v, meta) {
                  final i = v.toInt();
                  if (i < 0 || i >= _labels.length || i % step != 0) {
                    return const SizedBox.shrink();
                  }
                  return Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Transform.rotate(
                      angle: -0.5, // ~-28.6°
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 72),
                        child: Text(
                          _labels[i],
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 10.5,
                            color: _cSecondary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          barTouchData: BarTouchData(
            enabled: true,
            touchTooltipData: BarTouchTooltipData(
              tooltipBorderRadius: BorderRadius.circular(8), // fl_chart 1.x
              tooltipPadding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                final i = group.x.toInt().clamp(0, _labels.length - 1);
                final label = _labels[i];
                final count = _values[i].toInt();
                return BarTooltipItem(
                  '$label\n',
                  const TextStyle(
                      fontWeight: FontWeight.w700, color: _cPrimary),
                  children: [
                    TextSpan(
                      text: '$count registro${count == 1 ? '' : 's'}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: _cSecondary,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          barGroups: List.generate(_labels.length, (i) {
            return BarChartGroupData(
              x: i,
              barsSpace: 0,
              barRods: [
                BarChartRodData(
                  toY: _values[i],
                  width: 18,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(6)),
                  gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [_cPrimary, _cSecondary],
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
