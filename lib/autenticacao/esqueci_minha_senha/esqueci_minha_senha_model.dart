import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'esqueci_minha_senha_widget.dart' show EsqueciMinhaSenhaWidget;
import 'package:flutter/material.dart';

class EsqueciMinhaSenhaModel extends FlutterFlowModel<EsqueciMinhaSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
