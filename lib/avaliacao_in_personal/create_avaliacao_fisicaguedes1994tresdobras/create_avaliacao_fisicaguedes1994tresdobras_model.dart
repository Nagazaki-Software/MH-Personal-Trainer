import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/date_picker_formulas_widget.dart';
import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'create_avaliacao_fisicaguedes1994tresdobras_widget.dart'
    show CreateAvaliacaoFisicaguedes1994tresdobrasWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CreateAvaliacaoFisicaguedes1994tresdobrasModel
    extends FlutterFlowModel<CreateAvaliacaoFisicaguedes1994tresdobrasWidget> {
  ///  Local state fields for this page.

  bool isUploader = false;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
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
        'ayk88fhh' /* Please enter the patients full... */,
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
  String? Function(BuildContext, String?)? fullNameTextController21Validator;
  // Model for datePickerFormulas component.
  late DatePickerFormulasModel datePickerFormulasModel1;
  // State field(s) for age widget.
  FocusNode? ageFocusNode1;
  TextEditingController? ageTextController1;
  String? Function(BuildContext, String?)? ageTextController1Validator;
  String? _ageTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gqwhyzkt' /* Please enter an age for the pa... */,
      );
    }

    return null;
  }

  bool isDataUploading_uploadData0nl47hj = false;
  FFUploadedFile uploadedLocalFile_uploadData0nl47hj =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData0nl47hj = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AvaliacoesFisicasRecord? avaliacaoFisica;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;
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
  String? _fullNameTextController23Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'p7bozi97' /* Please enter the patients full... */,
      );
    }

    return null;
  }

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode24;
  TextEditingController? fullNameTextController24;
  late MaskTextInputFormatter fullNameMask24;
  String? Function(BuildContext, String?)? fullNameTextController24Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode25;
  TextEditingController? fullNameTextController25;
  late MaskTextInputFormatter fullNameMask25;
  String? Function(BuildContext, String?)? fullNameTextController25Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode26;
  TextEditingController? fullNameTextController26;
  late MaskTextInputFormatter fullNameMask26;
  String? Function(BuildContext, String?)? fullNameTextController26Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode27;
  TextEditingController? fullNameTextController27;
  late MaskTextInputFormatter fullNameMask27;
  String? Function(BuildContext, String?)? fullNameTextController27Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode28;
  TextEditingController? fullNameTextController28;
  late MaskTextInputFormatter fullNameMask28;
  String? Function(BuildContext, String?)? fullNameTextController28Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode29;
  TextEditingController? fullNameTextController29;
  late MaskTextInputFormatter fullNameMask29;
  String? Function(BuildContext, String?)? fullNameTextController29Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode30;
  TextEditingController? fullNameTextController30;
  late MaskTextInputFormatter fullNameMask30;
  String? Function(BuildContext, String?)? fullNameTextController30Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode31;
  TextEditingController? fullNameTextController31;
  late MaskTextInputFormatter fullNameMask31;
  String? Function(BuildContext, String?)? fullNameTextController31Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode32;
  TextEditingController? fullNameTextController32;
  late MaskTextInputFormatter fullNameMask32;
  String? Function(BuildContext, String?)? fullNameTextController32Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode33;
  TextEditingController? fullNameTextController33;
  late MaskTextInputFormatter fullNameMask33;
  String? Function(BuildContext, String?)? fullNameTextController33Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode34;
  TextEditingController? fullNameTextController34;
  late MaskTextInputFormatter fullNameMask34;
  String? Function(BuildContext, String?)? fullNameTextController34Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode35;
  TextEditingController? fullNameTextController35;
  late MaskTextInputFormatter fullNameMask35;
  String? Function(BuildContext, String?)? fullNameTextController35Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode36;
  TextEditingController? fullNameTextController36;
  late MaskTextInputFormatter fullNameMask36;
  String? Function(BuildContext, String?)? fullNameTextController36Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode37;
  TextEditingController? fullNameTextController37;
  late MaskTextInputFormatter fullNameMask37;
  String? Function(BuildContext, String?)? fullNameTextController37Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode38;
  TextEditingController? fullNameTextController38;
  late MaskTextInputFormatter fullNameMask38;
  String? Function(BuildContext, String?)? fullNameTextController38Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode39;
  TextEditingController? fullNameTextController39;
  late MaskTextInputFormatter fullNameMask39;
  String? Function(BuildContext, String?)? fullNameTextController39Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode40;
  TextEditingController? fullNameTextController40;
  late MaskTextInputFormatter fullNameMask40;
  String? Function(BuildContext, String?)? fullNameTextController40Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode41;
  TextEditingController? fullNameTextController41;
  late MaskTextInputFormatter fullNameMask41;
  String? Function(BuildContext, String?)? fullNameTextController41Validator;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode42;
  TextEditingController? fullNameTextController42;
  String? Function(BuildContext, String?)? fullNameTextController42Validator;
  // Model for datePickerFormulas component.
  late DatePickerFormulasModel datePickerFormulasModel2;
  // State field(s) for age widget.
  FocusNode? ageFocusNode2;
  TextEditingController? ageTextController2;
  String? Function(BuildContext, String?)? ageTextController2Validator;
  String? _ageTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hg73wu9s' /* Please enter an age for the pa... */,
      );
    }

    return null;
  }

  bool isDataUploading_uploadData0nl47h = false;
  FFUploadedFile uploadedLocalFile_uploadData0nl47h =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData0nl47h = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AvaliacoesFisicasRecord? avaliacaoFisicas;

  @override
  void initState(BuildContext context) {
    fullNameTextController2Validator = _fullNameTextController2Validator;
    datePickerFormulasModel1 =
        createModel(context, () => DatePickerFormulasModel());
    ageTextController1Validator = _ageTextController1Validator;
    headerwebModel = createModel(context, () => HeaderwebModel());
    fullNameTextController23Validator = _fullNameTextController23Validator;
    datePickerFormulasModel2 =
        createModel(context, () => DatePickerFormulasModel());
    ageTextController2Validator = _ageTextController2Validator;
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

    datePickerFormulasModel1.dispose();
    ageFocusNode1?.dispose();
    ageTextController1?.dispose();

    headerwebModel.dispose();
    fullNameFocusNode22?.dispose();
    fullNameTextController22?.dispose();

    fullNameFocusNode23?.dispose();
    fullNameTextController23?.dispose();

    fullNameFocusNode24?.dispose();
    fullNameTextController24?.dispose();

    fullNameFocusNode25?.dispose();
    fullNameTextController25?.dispose();

    fullNameFocusNode26?.dispose();
    fullNameTextController26?.dispose();

    fullNameFocusNode27?.dispose();
    fullNameTextController27?.dispose();

    fullNameFocusNode28?.dispose();
    fullNameTextController28?.dispose();

    fullNameFocusNode29?.dispose();
    fullNameTextController29?.dispose();

    fullNameFocusNode30?.dispose();
    fullNameTextController30?.dispose();

    fullNameFocusNode31?.dispose();
    fullNameTextController31?.dispose();

    fullNameFocusNode32?.dispose();
    fullNameTextController32?.dispose();

    fullNameFocusNode33?.dispose();
    fullNameTextController33?.dispose();

    fullNameFocusNode34?.dispose();
    fullNameTextController34?.dispose();

    fullNameFocusNode35?.dispose();
    fullNameTextController35?.dispose();

    fullNameFocusNode36?.dispose();
    fullNameTextController36?.dispose();

    fullNameFocusNode37?.dispose();
    fullNameTextController37?.dispose();

    fullNameFocusNode38?.dispose();
    fullNameTextController38?.dispose();

    fullNameFocusNode39?.dispose();
    fullNameTextController39?.dispose();

    fullNameFocusNode40?.dispose();
    fullNameTextController40?.dispose();

    fullNameFocusNode41?.dispose();
    fullNameTextController41?.dispose();

    fullNameFocusNode42?.dispose();
    fullNameTextController42?.dispose();

    datePickerFormulasModel2.dispose();
    ageFocusNode2?.dispose();
    ageTextController2?.dispose();
  }
}
