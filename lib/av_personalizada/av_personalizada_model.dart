import '/backend/backend.dart';
import '/components/perguntas_copy_widget.dart';
import '/components/perguntas_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'av_personalizada_widget.dart' show AvPersonalizadaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AvPersonalizadaModel extends FlutterFlowModel<AvPersonalizadaWidget> {
  ///  Local state fields for this page.

  List<int> perguntas = [];
  void addToPerguntas(int item) => perguntas.add(item);
  void removeFromPerguntas(int item) => perguntas.remove(item);
  void removeAtIndexFromPerguntas(int index) => perguntas.removeAt(index);
  void insertAtIndexInPerguntas(int index, int item) =>
      perguntas.insert(index, item);
  void updatePerguntasAtIndex(int index, Function(int) updateFn) =>
      perguntas[index] = updateFn(perguntas[index]);

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

  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
