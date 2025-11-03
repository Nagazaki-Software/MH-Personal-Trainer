import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/docucmentenviado_widget.dart';
import '/components/naoexistearquivos_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'enviardocumentosalunos_widget.dart' show EnviardocumentosalunosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnviardocumentosalunosModel
    extends FlutterFlowModel<EnviardocumentosalunosWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData0cz = false;
  FFUploadedFile uploadedLocalFile_uploadData0cz =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData0cz = '';

  bool isDataUploading_uploadData7u4 = false;
  FFUploadedFile uploadedLocalFile_uploadData7u4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData7u4 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
