import '/flutter_flow/flutter_flow_util.dart';
import 'profile_personal_widget.dart' show ProfilePersonalWidget;
import 'package:flutter/material.dart';

class ProfilePersonalModel extends FlutterFlowModel<ProfilePersonalWidget> {
  ///  Local state fields for this component.

  bool isNewPhoto = false;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();
  }
}
