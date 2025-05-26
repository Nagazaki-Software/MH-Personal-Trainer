import '/backend/backend.dart';
import '/components/av_fisica_home_page_widget.dart';
import '/components/baxei_o_appp_widget.dart';
import '/components/funcoes_aluno_widget.dart';
import '/components/headerweb_copy_widget.dart';
import '/components/headerweb_widget.dart';
import '/components/pagina_inicial_aluno_widget.dart';
import '/components/pagina_inicial_personal_widget.dart';
import '/components/personal_widget.dart';
import '/components/treinos_populares_chat_g_p_t_copy_widget.dart';
import '/components/treinos_populares_chat_g_p_t_widget.dart';
import '/components/upgrade_to_premium_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagina_inicial_widget.dart' show PaginaInicialWidget;
import 'package:flutter/material.dart';

class PaginaInicialModel extends FlutterFlowModel<PaginaInicialWidget> {
  ///  Local state fields for this page.

  String defaultGemini =
      'Ops, eu não consigo te responder algo sobre treino ou saúde.';

  bool abrirFAB = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in PaginaInicial widget.
  CreateTreinosRecord? createTreinosQuerry;
  // Stores action output result for [Firestore Query - Query a collection] action in PaginaInicial widget.
  PersonalAccountRecord? queryPersonal;
  // Stores action output result for [Firestore Query - Query a collection] action in PaginaInicial widget.
  UsersRecord? queryUser;
  // Model for paginaInicialAluno component.
  late PaginaInicialAlunoModel paginaInicialAlunoModel;
  // Model for PaginaInicialPersonal component.
  late PaginaInicialPersonalModel paginaInicialPersonalModel;
  // Model for treinosPopularesChatGPT component.
  late TreinosPopularesChatGPTModel treinosPopularesChatGPTModel1;
  // Model for treinosPopularesChatGPTCopy component.
  late TreinosPopularesChatGPTCopyModel treinosPopularesChatGPTCopyModel;
  // Model for treinosPopularesChatGPT component.
  late TreinosPopularesChatGPTModel treinosPopularesChatGPTModel2;
  // Model for upgradeToPremium component.
  late UpgradeToPremiumModel upgradeToPremiumModel;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;
  // Model for headerwebCopy component.
  late HeaderwebCopyModel headerwebCopyModel;
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
    paginaInicialAlunoModel =
        createModel(context, () => PaginaInicialAlunoModel());
    paginaInicialPersonalModel =
        createModel(context, () => PaginaInicialPersonalModel());
    treinosPopularesChatGPTModel1 =
        createModel(context, () => TreinosPopularesChatGPTModel());
    treinosPopularesChatGPTCopyModel =
        createModel(context, () => TreinosPopularesChatGPTCopyModel());
    treinosPopularesChatGPTModel2 =
        createModel(context, () => TreinosPopularesChatGPTModel());
    upgradeToPremiumModel = createModel(context, () => UpgradeToPremiumModel());
    headerwebModel = createModel(context, () => HeaderwebModel());
    headerwebCopyModel = createModel(context, () => HeaderwebCopyModel());
    personalModel = createModel(context, () => PersonalModel());
    funcoesAlunoModel = createModel(context, () => FuncoesAlunoModel());
    baxeiOApppModel = createModel(context, () => BaxeiOApppModel());
    avFisicaHomePageModel = createModel(context, () => AvFisicaHomePageModel());
  }

  @override
  void dispose() {
    paginaInicialAlunoModel.dispose();
    paginaInicialPersonalModel.dispose();
    treinosPopularesChatGPTModel1.dispose();
    treinosPopularesChatGPTCopyModel.dispose();
    treinosPopularesChatGPTModel2.dispose();
    upgradeToPremiumModel.dispose();
    headerwebModel.dispose();
    headerwebCopyModel.dispose();
    personalModel.dispose();
    funcoesAlunoModel.dispose();
    baxeiOApppModel.dispose();
    avFisicaHomePageModel.dispose();
  }
}
