import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/aindanaoexisteproto_widget.dart';
import '/components/enviar_progresso_para_opersonal_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'meu_progresso_v_aluno_widget.dart' show MeuProgressoVAlunoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MeuProgressoVAlunoModel
    extends FlutterFlowModel<MeuProgressoVAlunoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in meuProgressoVAluno widget.
  List<AvaliacoesFisicasRecord>? queryAvFisica;
  // Stores action output result for [Firestore Query - Query a collection] action in meuProgressoVAluno widget.
  List<CreateTreinosRecord>? createTreinos;
  // Stores action output result for [Firestore Query - Query a collection] action in meuProgressoVAluno widget.
  List<SeriesRepeticoesRecord>? seriesREP;
  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for Slider widget.
  double? sliderValue2;
  // State field(s) for Slider widget.
  double? sliderValue3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
