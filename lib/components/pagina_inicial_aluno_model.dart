import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/av_fisica_home_page_widget.dart';
import '/components/baxei_o_appp_widget.dart';
import '/components/funcoes_aluno_widget.dart';
import '/components/mudar_codigo_de_personal_widget.dart';
import '/components/naoteenviouumtreino_widget.dart';
import '/components/personal_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'pagina_inicial_aluno_widget.dart' show PaginaInicialAlunoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaginaInicialAlunoModel
    extends FlutterFlowModel<PaginaInicialAlunoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for personal component.
  late PersonalModel personalModel;
  // Model for funcoesAluno component.
  late FuncoesAlunoModel funcoesAlunoModel;
  // Model for baxeiOAppp component.
  late BaxeiOApppModel baxeiOApppModel;
  // Model for avFisicaHomePage component.
  late AvFisicaHomePageModel avFisicaHomePageModel;

  @override
  void initState(BuildContext context) {
    personalModel = createModel(context, () => PersonalModel());
    funcoesAlunoModel = createModel(context, () => FuncoesAlunoModel());
    baxeiOApppModel = createModel(context, () => BaxeiOApppModel());
    avFisicaHomePageModel = createModel(context, () => AvFisicaHomePageModel());
  }

  @override
  void dispose() {
    personalModel.dispose();
    funcoesAlunoModel.dispose();
    baxeiOApppModel.dispose();
    avFisicaHomePageModel.dispose();
  }
}
