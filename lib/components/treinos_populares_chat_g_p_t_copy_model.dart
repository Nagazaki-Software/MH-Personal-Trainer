import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'treinos_populares_chat_g_p_t_copy_widget.dart'
    show TreinosPopularesChatGPTCopyWidget;
import 'package:flutter/material.dart';

class TreinosPopularesChatGPTCopyModel
    extends FlutterFlowModel<TreinosPopularesChatGPTCopyWidget> {
  ///  Local state fields for this component.

  RecomendacoesStruct? data;
  void updateDataStruct(Function(RecomendacoesStruct) updateFn) {
    updateFn(data ??= RecomendacoesStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in treinosPopularesChatGPTCopy widget.
  List<TreinorsRecord>? queryTreinors;
  // Stores action output result for [Gemini - Generate Text] action in treinosPopularesChatGPTCopy widget.
  String? apiResult9eo;
  // Stores action output result for [Gemini - Generate Text] action in treinosPopularesChatGPTCopy widget.
  String? apiResult9eo2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
