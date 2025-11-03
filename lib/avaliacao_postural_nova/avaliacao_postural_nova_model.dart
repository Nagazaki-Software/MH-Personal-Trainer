import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'avaliacao_postural_nova_widget.dart' show AvaliacaoPosturalNovaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AvaliacaoPosturalNovaModel
    extends FlutterFlowModel<AvaliacaoPosturalNovaWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_fotoFrontalop = false;
  FFUploadedFile uploadedLocalFile_fotoFrontalop =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_fotoFrontalop = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  bool isDataUploading_fotoLateral = false;
  FFUploadedFile uploadedLocalFile_fotoLateral =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_fotoLateral = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading_fotoPosterior = false;
  FFUploadedFile uploadedLocalFile_fotoPosterior =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_fotoPosterior = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;
  bool isDataUploading_fotoFrontal34 = false;
  FFUploadedFile uploadedLocalFile_fotoFrontal34 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_fotoFrontal34 = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  bool isDataUploading_fotoLateralo = false;
  FFUploadedFile uploadedLocalFile_fotoLateralo =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_fotoLateralo = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  bool isDataUploading_fotoPosteriorr = false;
  FFUploadedFile uploadedLocalFile_fotoPosteriorr =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_fotoPosteriorr = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;

  @override
  void initState(BuildContext context) {
    headerwebModel = createModel(context, () => HeaderwebModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    headerwebModel.dispose();
    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();
  }
}
