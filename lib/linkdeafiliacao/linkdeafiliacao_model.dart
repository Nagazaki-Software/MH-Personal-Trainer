import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/oqeocodigodepersonal_widget.dart';
import '/components/personal_nao_tem_limites_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'linkdeafiliacao_widget.dart' show LinkdeafiliacaoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LinkdeafiliacaoModel extends FlutterFlowModel<LinkdeafiliacaoWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataUv35k = false;
  FFUploadedFile uploadedLocalFile_uploadDataUv35k =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataUv35k = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for emailCelular widget.
  FocusNode? emailCelularFocusNode;
  TextEditingController? emailCelularTextController;
  String? Function(BuildContext, String?)? emailCelularTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for passwordCelular widget.
  FocusNode? passwordCelularFocusNode;
  TextEditingController? passwordCelularTextController;
  late bool passwordCelularVisibility;
  String? Function(BuildContext, String?)?
      passwordCelularTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? confirmPasswordTextController0;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextController0Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  bool isDataUploading_uploadDataUvk34643636 = false;
  FFUploadedFile uploadedLocalFile_uploadDataUvk34643636 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataUvk34643636 = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for emailCelularweb widget.
  FocusNode? emailCelularwebFocusNode;
  TextEditingController? emailCelularwebTextController;
  String? Function(BuildContext, String?)?
      emailCelularwebTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for passwordCelularweb widget.
  FocusNode? passwordCelularwebFocusNode;
  TextEditingController? passwordCelularwebTextController;
  late bool passwordCelularwebVisibility;
  String? Function(BuildContext, String?)?
      passwordCelularwebTextControllerValidator;
  // State field(s) for TextFieldweb widget.
  FocusNode? textFieldwebFocusNode;
  TextEditingController? textFieldwebTextController;
  late bool textFieldwebVisibility;
  String? Function(BuildContext, String?)? textFieldwebTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;

  @override
  void initState(BuildContext context) {
    passwordCelularVisibility = false;
    passwordVisibility = false;
    passwordCelularwebVisibility = false;
    textFieldwebVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    emailCelularFocusNode?.dispose();
    emailCelularTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    passwordCelularFocusNode?.dispose();
    passwordCelularTextController?.dispose();

    textFieldFocusNode3?.dispose();
    confirmPasswordTextController0?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    emailCelularwebFocusNode?.dispose();
    emailCelularwebTextController?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    passwordCelularwebFocusNode?.dispose();
    passwordCelularwebTextController?.dispose();

    textFieldwebFocusNode?.dispose();
    textFieldwebTextController?.dispose();

    textFieldFocusNode7?.dispose();
    textController8?.dispose();
  }
}
