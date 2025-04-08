import '/flutter_flow/flutter_flow_util.dart';
import 'editarseries_widget.dart' show EditarseriesWidget;
import 'package:flutter/material.dart';

class EditarseriesModel extends FlutterFlowModel<EditarseriesWidget> {
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
