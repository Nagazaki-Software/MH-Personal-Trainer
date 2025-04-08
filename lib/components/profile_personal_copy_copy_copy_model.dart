import '/flutter_flow/flutter_flow_util.dart';
import 'profile_personal_copy_copy_copy_widget.dart'
    show ProfilePersonalCopyCopyCopyWidget;
import 'package:flutter/material.dart';

class ProfilePersonalCopyCopyCopyModel
    extends FlutterFlowModel<ProfilePersonalCopyCopyCopyWidget> {
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
