import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/textfield_av_personalizada_number_widget.dart';
import '/components/textfield_av_personalizada_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'aluno_fazerav_personalizada_widget.dart'
    show AlunoFazeravPersonalizadaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AlunoFazeravPersonalizadaModel
    extends FlutterFlowModel<AlunoFazeravPersonalizadaWidget> {
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
  Map<String, bool> checkboxValueMap4 = {};
  List<String> get checkboxCheckedItems4 => checkboxValueMap4.entries
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

  // State field(s) for Checkbox widget.
  Map<PerguntasDasAvaliacoesPersonalizadasRecord, bool> checkboxValueMap6 = {};
  List<PerguntasDasAvaliacoesPersonalizadasRecord> get checkboxCheckedItems6 =>
      checkboxValueMap6.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
