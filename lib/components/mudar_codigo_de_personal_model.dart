import '/flutter_flow/flutter_flow_util.dart';
import 'mudar_codigo_de_personal_widget.dart' show MudarCodigoDePersonalWidget;
import 'package:flutter/material.dart';

class MudarCodigoDePersonalModel
    extends FlutterFlowModel<MudarCodigoDePersonalWidget> {
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
