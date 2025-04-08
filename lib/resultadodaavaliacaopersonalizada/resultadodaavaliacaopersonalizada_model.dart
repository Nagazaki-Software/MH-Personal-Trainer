import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resultadodaavaliacaopersonalizada_widget.dart'
    show ResultadodaavaliacaopersonalizadaWidget;
import 'package:flutter/material.dart';

class ResultadodaavaliacaopersonalizadaModel
    extends FlutterFlowModel<ResultadodaavaliacaopersonalizadaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  Map<String, bool> checkboxValueMap1 = {};
  List<String> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<String, bool> checkboxValueMap2 = {};
  List<String> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<String, bool> checkboxValueMap3 = {};
  List<String> get checkboxCheckedItems3 => checkboxValueMap3.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<PerguntasDasAvaliacoesPersonalizadasRecord, bool> checkboxValueMap4 = {};
  List<PerguntasDasAvaliacoesPersonalizadasRecord> get checkboxCheckedItems4 =>
      checkboxValueMap4.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<PerguntasDasAvaliacoesPersonalizadasRecord, bool> checkboxValueMap5 = {};
  List<PerguntasDasAvaliacoesPersonalizadasRecord> get checkboxCheckedItems5 =>
      checkboxValueMap5.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
