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

import 'dart:math' as math;
import 'package:fl_chart/fl_chart.dart';

class ChartCircular extends StatefulWidget {
  const ChartCircular({
    super.key,
    this.width,
    this.height,
    this.pagamentoRef,
  });

  final double? width;
  final double? height;
  final List<PagamentosRecord>? pagamentoRef;

  @override
  State<ChartCircular> createState() => _ChartCircularState();
}

class _ChartCircularState extends State<ChartCircular> {
  // Paleta (apenas o gráfico em tons de azul)
  static const Color navy = Color(0xFF002A5D);
  static const Color blue = Color(0xFF0048A9);

  int? _touchedIndex;

  @override
  Widget build(BuildContext context) {
    final data = _getSlices();
    final total = data.fold<double>(0, (s, e) => s + e.value);

    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        width: widget.width ?? double.infinity,
        height: widget.height ?? 260,
        color: Colors.white, // fundo branco, sem gradiente
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
        child: (data.isEmpty || total <= 0)
            ? const Center(
                child: Text('Sem pagamentos', style: TextStyle(fontSize: 14)))
            : Column(
                children: [
                  // Gráfico responsivo, sem textos no centro
                  Expanded(
                    child: LayoutBuilder(
                      builder: (_, c) {
                        final size = math.min(c.maxWidth, c.maxHeight);
                        final sectionSpace = size * 0.015; // 1.5%
                        final baseRadius = size * 0.40;
                        final bump = size * 0.04;
                        final centerHole = size * 0.10; // furo pequeno
                        final labelFont = math.max(10.0, size * 0.07);

                        return PieChart(
                          PieChartData(
                            startDegreeOffset: -90,
                            sectionsSpace: sectionSpace,
                            centerSpaceRadius: centerHole,
                            borderData: FlBorderData(show: false),
                            pieTouchData: PieTouchData(
                              enabled: true,
                              touchCallback: (evt, resp) {
                                setState(() {
                                  _touchedIndex =
                                      resp?.touchedSection?.touchedSectionIndex;
                                });
                              },
                            ),
                            sections: List.generate(data.length, (i) {
                              final s = data[i];
                              final isTouched = i == _touchedIndex;
                              final percent =
                                  total > 0 ? (s.value / total) * 100 : 0.0;
                              final showTitle = percent >=
                                  6; // só mostra % quando é relevante

                              return PieChartSectionData(
                                color: s.color,
                                value: s.value <= 0 ? 0.0001 : s.value,
                                radius: baseRadius + (isTouched ? bump : 0),
                                title: showTitle
                                    ? '${percent.toStringAsFixed(0)}%'
                                    : '',
                                titleStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: labelFont,
                                ),
                                // presente no fl_chart 1.0.0
                                titlePositionPercentageOffset: 0.6,
                              );
                            }),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Legenda compacta: rótulo — R$ valor (xx%)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      spacing: 12,
                      runSpacing: 8,
                      children: [
                        for (final s in data)
                          _legendItem(
                            s.label,
                            s.color,
                            s.value,
                            total > 0 ? (s.value / total) * 100 : 0,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  // ===== Helpers =====

  List<_Slice> _getSlices() {
    final list = widget.pagamentoRef;
    if (list == null || list.isEmpty) return [];

    final Map<String, double> somaPorDesc = {};
    for (final r in list) {
      final desc = _extractDescricao(r);
      final v = _extractValor(r);
      if (v <= 0) continue;
      somaPorDesc[desc] = (somaPorDesc[desc] ?? 0) + v;
    }
    if (somaPorDesc.isEmpty) return [];

    // Top 5 + "Outros"
    final entries = somaPorDesc.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    final top = entries.take(5).toList();
    final outros = entries.skip(5).fold<double>(0, (s, e) => s + e.value);

    final palette = [blue, navy, blue, navy, blue];
    final out = <_Slice>[
      for (var i = 0; i < top.length; i++)
        _Slice(
            label: top[i].key,
            value: top[i].value,
            color: palette[i % palette.length]),
    ];
    if (outros > 0)
      out.add(_Slice(label: 'Outros', value: outros, color: navy));
    return out;
  }

  Widget _legendItem(String label, Color color, double value, double percent) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withOpacity(0.55), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(2))),
          const SizedBox(width: 8),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 160),
            child: Text(
              '$label — ${_formatCurrency(value)} (${percent.toStringAsFixed(0)}%)',
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF002A5D)),
            ),
          ),
        ],
      ),
    );
  }

  double _extractValor(PagamentosRecord r) {
    try {
      final d = r as dynamic;
      final v = d.valorDaCobranca ?? d.valorDaCombranca ?? d.valor ?? 0.0;
      if (v is num) return v.toDouble();
    } catch (_) {}
    return 0.0;
  }

  String _extractDescricao(PagamentosRecord r) {
    try {
      final d = r as dynamic;
      final s = (d.descricao as String?);
      if (s != null && s.trim().isNotEmpty) return s.trim();
    } catch (_) {}
    return 'Sem descrição';
  }

  String _formatCurrency(double v) {
    final txt = v.toStringAsFixed(2).replaceAll('.', ',');
    return 'R\$ $txt';
  }
}

class _Slice {
  final String label;
  final double value;
  final Color color;
  _Slice({required this.label, required this.value, required this.color});
}
