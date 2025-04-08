import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editar_aluno_widget.dart' show EditarAlunoWidget;
import 'package:flutter/material.dart';

class EditarAlunoModel extends FlutterFlowModel<EditarAlunoWidget> {
  ///  Local state fields for this page.

  bool peitoralOn = false;

  bool costasOn = false;

  bool meusTreinosOn = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for age widget.
  FocusNode? ageFocusNode1;
  TextEditingController? ageTextController1;
  String? Function(BuildContext, String?)? ageTextController1Validator;
  String? _ageTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tlsd8koi' /* Please enter an age for the pa... */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for age widget.
  FocusNode? ageFocusNode2;
  TextEditingController? ageTextController2;
  String? Function(BuildContext, String?)? ageTextController2Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode3;
  TextEditingController? ageTextController3;
  String? Function(BuildContext, String?)? ageTextController3Validator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  @override
  void initState(BuildContext context) {
    ageTextController1Validator = _ageTextController1Validator;
  }

  @override
  void dispose() {
    ageFocusNode1?.dispose();
    ageTextController1?.dispose();

    ageFocusNode2?.dispose();
    ageTextController2?.dispose();

    ageFocusNode3?.dispose();
    ageTextController3?.dispose();
  }
}
