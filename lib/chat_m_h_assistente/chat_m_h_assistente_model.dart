import '/backend/backend.dart';
import '/components/recomendacoes_i_a_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_m_h_assistente_widget.dart' show ChatMHAssistenteWidget;
import 'package:flutter/material.dart';

class ChatMHAssistenteModel extends FlutterFlowModel<ChatMHAssistenteWidget> {
  ///  Local state fields for this page.

  String? exercicio;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in chatMHAssistente widget.
  List<TreinorsRecord>? queryTreinors;
  // Stores action output result for [Firestore Query - Query a collection] action in chatMHAssistente widget.
  CreateTreinosRecord? queryCreatetREINOS;
  // Stores action output result for [Gemini - Generate Text] action in chatMHAssistente widget.
  String? primeiraCV;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // Model for recomendacoesIA component.
  late RecomendacoesIAModel recomendacoesIAModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in TextField widget.
  String? chatGPT;
  // Stores action output result for [Gemini - Generate Text] action in TextField widget.
  String? verifiqueSesobreSauce;
  // Stores action output result for [Gemini - Generate Text] action in TextField widget.
  String? naoedesaude;
  // Stores action output result for [Gemini - Generate Text] action in Icon widget.
  String? chatGPTs;
  // Stores action output result for [Gemini - Generate Text] action in Icon widget.
  String? verifiqueSesobreSaude;
  // Stores action output result for [Gemini - Generate Text] action in Icon widget.
  String? verifiqueseOtreino;
  // Stores action output result for [Gemini - Generate Text] action in Icon widget.
  String? naoedesaudes;
  // Stores action output result for [Gemini - Generate Text] action in Icon widget.
  String? listsTreino;
  // Stores action output result for [Gemini - Generate Text] action in Icon widget.
  String? treinocriadocomsucessos;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  CreateTreinosRecord? createTreinos;
  // Stores action output result for [Gemini - Generate Text] action in Icon widget.
  String? treinocriadonaocriados;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    recomendacoesIAModel = createModel(context, () => RecomendacoesIAModel());
  }

  @override
  void dispose() {
    columnController?.dispose();
    recomendacoesIAModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
