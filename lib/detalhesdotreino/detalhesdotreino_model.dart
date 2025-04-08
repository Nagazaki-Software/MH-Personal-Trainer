import '/backend/backend.dart';
import '/components/reomendadopelomh_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhesdotreino_widget.dart' show DetalhesdotreinoWidget;
import 'package:flutter/material.dart';

class DetalhesdotreinoModel extends FlutterFlowModel<DetalhesdotreinoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in detalhesdotreino widget.
  TreinorsRecord? treinortreino;
  // Stores action output result for [Gemini - Generate Text] action in detalhesdotreino widget.
  String? apiResult8j7;
  // Model for reomendadopelomhCopy component.
  late ReomendadopelomhCopyModel reomendadopelomhCopyModel;

  @override
  void initState(BuildContext context) {
    reomendadopelomhCopyModel =
        createModel(context, () => ReomendadopelomhCopyModel());
  }

  @override
  void dispose() {
    reomendadopelomhCopyModel.dispose();
  }
}
