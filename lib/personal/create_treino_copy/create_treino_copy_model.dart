import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_treino_copy_widget.dart' show CreateTreinoCopyWidget;
import 'package:flutter/material.dart';

class CreateTreinoCopyModel extends FlutterFlowModel<CreateTreinoCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  String? _ageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '59vnonm7' /* Please enter an age for the pa... */,
      );
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TreinorsRecord? treinors;

  @override
  void initState(BuildContext context) {
    ageTextControllerValidator = _ageTextControllerValidator;
  }

  @override
  void dispose() {
    ageFocusNode?.dispose();
    ageTextController?.dispose();
  }
}
