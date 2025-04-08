import '/flutter_flow/flutter_flow_util.dart';
import 'reponderfeedback_widget.dart' show ReponderfeedbackWidget;
import 'package:flutter/material.dart';

class ReponderfeedbackModel extends FlutterFlowModel<ReponderfeedbackWidget> {
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
