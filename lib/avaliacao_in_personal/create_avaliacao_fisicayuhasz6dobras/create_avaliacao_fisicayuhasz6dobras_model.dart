import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/date_picker_formulas_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'create_avaliacao_fisicayuhasz6dobras_widget.dart'
    show CreateAvaliacaoFisicayuhasz6dobrasWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CreateAvaliacaoFisicayuhasz6dobrasModel
    extends FlutterFlowModel<CreateAvaliacaoFisicayuhasz6dobrasWidget> {
  ///  Local state fields for this page.

  bool isUploader = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode1;
  TextEditingController? fullNameTextController1;
  late MaskTextInputFormatter fullNameMask1;
  String? Function(BuildContext, String?)? fullNameTextController1Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode2;
  TextEditingController? fullNameTextController2;
  late MaskTextInputFormatter fullNameMask2;
  String? Function(BuildContext, String?)? fullNameTextController2Validator;
  String? _fullNameTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'kbecois9' /* Please enter the patients full... */,
      );
    }

    return null;
  }

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode3;
  TextEditingController? fullNameTextController3;
  late MaskTextInputFormatter fullNameMask3;
  String? Function(BuildContext, String?)? fullNameTextController3Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode4;
  TextEditingController? fullNameTextController4;
  late MaskTextInputFormatter fullNameMask4;
  String? Function(BuildContext, String?)? fullNameTextController4Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode5;
  TextEditingController? fullNameTextController5;
  late MaskTextInputFormatter fullNameMask5;
  String? Function(BuildContext, String?)? fullNameTextController5Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode6;
  TextEditingController? fullNameTextController6;
  late MaskTextInputFormatter fullNameMask6;
  String? Function(BuildContext, String?)? fullNameTextController6Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode7;
  TextEditingController? fullNameTextController7;
  late MaskTextInputFormatter fullNameMask7;
  String? Function(BuildContext, String?)? fullNameTextController7Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode8;
  TextEditingController? fullNameTextController8;
  late MaskTextInputFormatter fullNameMask8;
  String? Function(BuildContext, String?)? fullNameTextController8Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode9;
  TextEditingController? fullNameTextController9;
  late MaskTextInputFormatter fullNameMask9;
  String? Function(BuildContext, String?)? fullNameTextController9Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode10;
  TextEditingController? fullNameTextController10;
  late MaskTextInputFormatter fullNameMask10;
  String? Function(BuildContext, String?)? fullNameTextController10Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode11;
  TextEditingController? fullNameTextController11;
  late MaskTextInputFormatter fullNameMask11;
  String? Function(BuildContext, String?)? fullNameTextController11Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode12;
  TextEditingController? fullNameTextController12;
  late MaskTextInputFormatter fullNameMask12;
  String? Function(BuildContext, String?)? fullNameTextController12Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode13;
  TextEditingController? fullNameTextController13;
  late MaskTextInputFormatter fullNameMask13;
  String? Function(BuildContext, String?)? fullNameTextController13Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode14;
  TextEditingController? fullNameTextController14;
  late MaskTextInputFormatter fullNameMask14;
  String? Function(BuildContext, String?)? fullNameTextController14Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode15;
  TextEditingController? fullNameTextController15;
  late MaskTextInputFormatter fullNameMask15;
  String? Function(BuildContext, String?)? fullNameTextController15Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode16;
  TextEditingController? fullNameTextController16;
  late MaskTextInputFormatter fullNameMask16;
  String? Function(BuildContext, String?)? fullNameTextController16Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode17;
  TextEditingController? fullNameTextController17;
  late MaskTextInputFormatter fullNameMask17;
  String? Function(BuildContext, String?)? fullNameTextController17Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode18;
  TextEditingController? fullNameTextController18;
  late MaskTextInputFormatter fullNameMask18;
  String? Function(BuildContext, String?)? fullNameTextController18Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode19;
  TextEditingController? fullNameTextController19;
  late MaskTextInputFormatter fullNameMask19;
  String? Function(BuildContext, String?)? fullNameTextController19Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode20;
  TextEditingController? fullNameTextController20;
  late MaskTextInputFormatter fullNameMask20;
  String? Function(BuildContext, String?)? fullNameTextController20Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode21;
  TextEditingController? fullNameTextController21;
  late MaskTextInputFormatter fullNameMask21;
  String? Function(BuildContext, String?)? fullNameTextController21Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode22;
  TextEditingController? fullNameTextController22;
  late MaskTextInputFormatter fullNameMask22;
  String? Function(BuildContext, String?)? fullNameTextController22Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode23;
  TextEditingController? fullNameTextController23;
  late MaskTextInputFormatter fullNameMask23;
  String? Function(BuildContext, String?)? fullNameTextController23Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode24;
  TextEditingController? fullNameTextController24;
  String? Function(BuildContext, String?)? fullNameTextController24Validator;
  // Model for datePickerFormulas component.
  late DatePickerFormulasModel datePickerFormulasModel;
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  String? _ageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ha381gwu' /* Please enter an age for the pa... */,
      );
    }

    return null;
  }

  bool isDataUploading_uploadData0nl7 = false;
  FFUploadedFile uploadedLocalFile_uploadData0nl7 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData0nl7 = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AvaliacoesFisicasRecord? avalicaofisica;

  @override
  void initState(BuildContext context) {
    fullNameTextController2Validator = _fullNameTextController2Validator;
    datePickerFormulasModel =
        createModel(context, () => DatePickerFormulasModel());
    ageTextControllerValidator = _ageTextControllerValidator;
  }

  @override
  void dispose() {
    fullNameFocusNode1?.dispose();
    fullNameTextController1?.dispose();

    fullNameFocusNode2?.dispose();
    fullNameTextController2?.dispose();

    fullNameFocusNode3?.dispose();
    fullNameTextController3?.dispose();

    fullNameFocusNode4?.dispose();
    fullNameTextController4?.dispose();

    fullNameFocusNode5?.dispose();
    fullNameTextController5?.dispose();

    fullNameFocusNode6?.dispose();
    fullNameTextController6?.dispose();

    fullNameFocusNode7?.dispose();
    fullNameTextController7?.dispose();

    fullNameFocusNode8?.dispose();
    fullNameTextController8?.dispose();

    fullNameFocusNode9?.dispose();
    fullNameTextController9?.dispose();

    fullNameFocusNode10?.dispose();
    fullNameTextController10?.dispose();

    fullNameFocusNode11?.dispose();
    fullNameTextController11?.dispose();

    fullNameFocusNode12?.dispose();
    fullNameTextController12?.dispose();

    fullNameFocusNode13?.dispose();
    fullNameTextController13?.dispose();

    fullNameFocusNode14?.dispose();
    fullNameTextController14?.dispose();

    fullNameFocusNode15?.dispose();
    fullNameTextController15?.dispose();

    fullNameFocusNode16?.dispose();
    fullNameTextController16?.dispose();

    fullNameFocusNode17?.dispose();
    fullNameTextController17?.dispose();

    fullNameFocusNode18?.dispose();
    fullNameTextController18?.dispose();

    fullNameFocusNode19?.dispose();
    fullNameTextController19?.dispose();

    fullNameFocusNode20?.dispose();
    fullNameTextController20?.dispose();

    fullNameFocusNode21?.dispose();
    fullNameTextController21?.dispose();

    fullNameFocusNode22?.dispose();
    fullNameTextController22?.dispose();

    fullNameFocusNode23?.dispose();
    fullNameTextController23?.dispose();

    fullNameFocusNode24?.dispose();
    fullNameTextController24?.dispose();

    datePickerFormulasModel.dispose();
    ageFocusNode?.dispose();
    ageTextController?.dispose();
  }
}
