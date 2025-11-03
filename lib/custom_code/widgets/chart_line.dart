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

class ChartLine extends StatefulWidget {
  const ChartLine({
    super.key,
    this.width,
    this.height,
    this.usersRecords, // document records
  });

  final double? width;
  final double? height;
  final List<UsersRecord>? usersRecords;

  @override
  State<ChartLine> createState() => _ChartLineState();
}

class _ChartLineState extends State<ChartLine> {
  // cores do tema
  static const _cPrimary = Color(0xFF002A5D); // navy
  static const _cSecondary = Color(0xFF0048A9); // azul
  static const _cBg = Colors.white;

  late final List<MapEntry<DateTime, int>> _series;
  late final List<FlSpot> _spots;
  late final List<String> _labels;
  late final double _maxY;

  // estado do tooltip custom
  bool _showTip = false;
  Offset _tipPos = Offset.zero; // posição local do toque
  String _tipLabel = '';
  int _tipCount = 0;

  @override
  void initState() {
    super.initState();
    _series = _buildSeries(widget.usersRecords ?? []);
    _spots = List.generate(
      _series.length,
      (i) => FlSpot(i.toDouble(), _series[i].value.toDouble()),
    );
    _labels = _series.map((e) => _fmtDay(e.key)).toList();
    _maxY = _series.isEmpty
        ? 0
        : _series.map((e) => e.value).reduce(math.max).toDouble();
  }

  /// Agrega a contagem de registros por dia (usa campos de data comuns).
  List<MapEntry<DateTime, int>> _buildSeries(List<UsersRecord> records) {
    final counts = <DateTime, int>{};

    for (final r in records) {
      final d = _extractDate(r);
      if (d == null) continue;
      final day = DateTime(d.year, d.month, d.day);
      counts[day] = (counts[day] ?? 0) + 1;
    }

    final sortedKeys = counts.keys.toList()..sort();
    return sortedKeys.map((k) => MapEntry(k, counts[k]!)).toList();
  }

  /// Extrai DateTime/Timestamp de campos comuns do record.
  DateTime? _extractDate(dynamic r) {
    DateTime? _toDate(dynamic v) {
      if (v is DateTime) return v;
      if (v is Timestamp) return v.toDate();
      return null;
    }

    try {
      final v = r.createdTime;
      final d = _toDate(v);
      if (d != null) return d;
    } catch (_) {}
    try {
      final v = r.createdAt;
      final d = _toDate(v);
      if (d != null) return d;
    } catch (_) {}
    try {
      final v = r.dataCriacao;
      final d = _toDate(v);
      if (d != null) return d;
    } catch (_) {}
    try {
      final v = r.timestamp;
      final d = _toDate(v);
      if (d != null) return d;
    } catch (_) {}
    try {
      final v = r.ts;
      final d = _toDate(v);
      if (d != null) return d;
    } catch (_) {}
    try {
      final v = r.joinedAt;
      final d = _toDate(v);
      if (d != null) return d;
    } catch (_) {}
    return null;
  }

  String _fmtDay(DateTime d) {
    final dd = d.day.toString().padLeft(2, '0');
    final mm = d.month.toString().padLeft(2, '0');
    return '$dd/$mm';
  }

  @override
  Widget build(BuildContext context) {
    if (_spots.isEmpty) {
      return Container(
        width: widget.width ?? double.infinity,
        height: widget.height ?? 280,
        color: _cBg,
        alignment: Alignment.center,
        child:
            const Text('Sem dados de usuários', style: TextStyle(fontSize: 14)),
      );
    }

    final maxX = (_spots.length - 1).toDouble();
    final maxY = (_maxY <= 1 ? 1.0 : _maxY + (_maxY * 0.2));
    final step = (_labels.length <= 6) ? 1 : (_labels.length / 6).ceil();

    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 320,
      color: _cBg,
      padding: const EdgeInsets.fromLTRB(12, 8, 20, 12),
      child: LayoutBuilder(
        builder: (context, c) {
          final w = c.maxWidth;
          final h = c.maxHeight;

          return Stack(
            children: [
              LineChart(
                LineChartData(
                  minX: 0,
                  maxX: maxX,
                  minY: 0,
                  maxY: maxY,
                  backgroundColor: _cBg,
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
                      bottom: BorderSide(
                          color: _cPrimary.withOpacity(0.2), width: 1),
                      left: BorderSide(
                          color: _cPrimary.withOpacity(0.2), width: 1),
                      right:
                          const BorderSide(color: Colors.transparent, width: 0),
                      top:
                          const BorderSide(color: Colors.transparent, width: 0),
                    ),
                  ),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 34,
                        getTitlesWidget: (v, meta) => Text(
                          v % 1 == 0 ? v.toInt().toString() : '',
                          style:
                              const TextStyle(color: _cPrimary, fontSize: 11),
                        ),
                      ),
                    ),
                    rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: step.toDouble(),
                        getTitlesWidget: (v, meta) {
                          final i = v.toInt();
                          if (i < 0 || i >= _labels.length || i % step != 0) {
                            return const SizedBox.shrink();
                          }
                          return Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              _labels[i],
                              style: const TextStyle(
                                fontSize: 10.5,
                                color: _cSecondary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  lineTouchData: LineTouchData(
                    enabled: true,
                    // desabilita o tooltip nativo (vazio) e usa o nosso overlay
                    touchTooltipData: LineTouchTooltipData(
                      getTooltipItems: (_) => [],
                    ),
                    touchCallback: (event, response) {
                      if (!event.isInterestedForInteractions ||
                          response == null ||
                          response.lineBarSpots == null ||
                          response.lineBarSpots!.isEmpty) {
                        setState(() => _showTip = false);
                        return;
                      }

                      final spot = response.lineBarSpots!.first;
                      final i = spot.x.round().clamp(0, _labels.length - 1);
                      final label = _labels[i];
                      final count = spot.y.toInt();

                      // Posição do ponteiro (pode ser null no Web → fallback)
                      final local = event.localPosition ?? Offset.zero;

                      // Limites e margem para manter o tooltip visível
                      const mw = 150.0; // largura máx. estimada do tooltip
                      const mh = 60.0; // altura estimada
                      const pad = 8.0;

                      double left = local.dx + 12;
                      double top = local.dy - mh - 6;

                      left = left.clamp(pad, w - mw - pad);
                      top = top.clamp(pad, h - mh - pad);

                      setState(() {
                        _tipPos = Offset(left, top);
                        _tipLabel = label;
                        _tipCount = count;
                        _showTip = true;
                      });
                    },
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: _spots,
                      isCurved: true,
                      barWidth: 3,
                      gradient: const LinearGradient(
                        colors: [_cSecondary, _cPrimary],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      dotData: FlDotData(show: true),
                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            _cSecondary.withOpacity(0.20),
                            _cPrimary.withOpacity(0.05),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Tooltip custom (fundo branco + borda azul)
              if (_showTip)
                Positioned(
                  left: _tipPos.dx,
                  top: _tipPos.dy,
                  child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 110, maxWidth: 150),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: _cSecondary, width: 1.4),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _tipLabel,
                          style: const TextStyle(
                            color: _cPrimary, // navy (23/07)
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '$_tipCount registro${_tipCount == 1 ? '' : 's'}',
                          style: const TextStyle(
                            color: _cSecondary, // azul (0/10 registros)
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
