import '/flutter_flow/flutter_flow_util.dart';
import 'resposta_feedback_widget.dart' show RespostaFeedbackWidget;
import 'package:flutter/material.dart';

class RespostaFeedbackModel extends FlutterFlowModel<RespostaFeedbackWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
