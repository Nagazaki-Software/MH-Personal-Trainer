import '/components/av_fisica_home_page_widget.dart';
import '/components/baxei_o_appp_widget.dart';
import '/components/funcoes_aluno_widget.dart';
import '/components/personal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pagina_inicial_aluno_widget.dart' show PaginaInicialAlunoWidget;
import 'package:flutter/material.dart';

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
