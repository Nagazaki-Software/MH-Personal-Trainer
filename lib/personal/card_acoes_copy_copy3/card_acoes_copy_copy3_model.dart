import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'card_acoes_copy_copy3_widget.dart' show CardAcoesCopyCopy3Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CardAcoesCopyCopy3Model
    extends FlutterFlowModel<CardAcoesCopyCopy3Widget> {
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
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

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
  }
}
