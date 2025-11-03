import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'card_acoes_copy_copy_widget.dart' show CardAcoesCopyCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CardAcoesCopyCopyModel extends FlutterFlowModel<CardAcoesCopyCopyWidget> {
  ///  Local state fields for this component.

  bool paceOn = false;

  bool seriesRepOn = false;

  bool intervaloOn = false;

  bool cargaOn = false;

  bool tempoOn = false;

  bool cadenciaOn = false;

  bool obsOn = false;

  bool velocidadeOn = false;

  bool distanciaOn = false;

  bool inclinacao = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for age widget.
  FocusNode? ageFocusNode1;
  TextEditingController? ageTextController1;
  String? Function(BuildContext, String?)? ageTextController1Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode2;
  TextEditingController? ageTextController2;
  String? Function(BuildContext, String?)? ageTextController2Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode3;
  TextEditingController? ageTextController3;
  String? Function(BuildContext, String?)? ageTextController3Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode4;
  TextEditingController? ageTextController4;
  String? Function(BuildContext, String?)? ageTextController4Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode5;
  TextEditingController? ageTextController5;
  String? Function(BuildContext, String?)? ageTextController5Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode6;
  TextEditingController? ageTextController6;
  String? Function(BuildContext, String?)? ageTextController6Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode7;
  TextEditingController? ageTextController7;
  String? Function(BuildContext, String?)? ageTextController7Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode8;
  TextEditingController? ageTextController8;
  String? Function(BuildContext, String?)? ageTextController8Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode9;
  TextEditingController? ageTextController9;
  String? Function(BuildContext, String?)? ageTextController9Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode10;
  TextEditingController? ageTextController10;
  String? Function(BuildContext, String?)? ageTextController10Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SeriesRepeticoesRecord? seriesReps;
  // State field(s) for age widget.
  FocusNode? ageFocusNode11;
  TextEditingController? ageTextController11;
  String? Function(BuildContext, String?)? ageTextController11Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode12;
  TextEditingController? ageTextController12;
  String? Function(BuildContext, String?)? ageTextController12Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode13;
  TextEditingController? ageTextController13;
  String? Function(BuildContext, String?)? ageTextController13Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode14;
  TextEditingController? ageTextController14;
  String? Function(BuildContext, String?)? ageTextController14Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode15;
  TextEditingController? ageTextController15;
  String? Function(BuildContext, String?)? ageTextController15Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode16;
  TextEditingController? ageTextController16;
  String? Function(BuildContext, String?)? ageTextController16Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode17;
  TextEditingController? ageTextController17;
  String? Function(BuildContext, String?)? ageTextController17Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode18;
  TextEditingController? ageTextController18;
  String? Function(BuildContext, String?)? ageTextController18Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode19;
  TextEditingController? ageTextController19;
  String? Function(BuildContext, String?)? ageTextController19Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode20;
  TextEditingController? ageTextController20;
  String? Function(BuildContext, String?)? ageTextController20Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SeriesRepeticoesRecord? seriesRepser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ageFocusNode1?.dispose();
    ageTextController1?.dispose();

    ageFocusNode2?.dispose();
    ageTextController2?.dispose();

    ageFocusNode3?.dispose();
    ageTextController3?.dispose();

    ageFocusNode4?.dispose();
    ageTextController4?.dispose();

    ageFocusNode5?.dispose();
    ageTextController5?.dispose();

    ageFocusNode6?.dispose();
    ageTextController6?.dispose();

    ageFocusNode7?.dispose();
    ageTextController7?.dispose();

    ageFocusNode8?.dispose();
    ageTextController8?.dispose();

    ageFocusNode9?.dispose();
    ageTextController9?.dispose();

    ageFocusNode10?.dispose();
    ageTextController10?.dispose();

    ageFocusNode11?.dispose();
    ageTextController11?.dispose();

    ageFocusNode12?.dispose();
    ageTextController12?.dispose();

    ageFocusNode13?.dispose();
    ageTextController13?.dispose();

    ageFocusNode14?.dispose();
    ageTextController14?.dispose();

    ageFocusNode15?.dispose();
    ageTextController15?.dispose();

    ageFocusNode16?.dispose();
    ageTextController16?.dispose();

    ageFocusNode17?.dispose();
    ageTextController17?.dispose();

    ageFocusNode18?.dispose();
    ageTextController18?.dispose();

    ageFocusNode19?.dispose();
    ageTextController19?.dispose();

    ageFocusNode20?.dispose();
    ageTextController20?.dispose();
  }
}
