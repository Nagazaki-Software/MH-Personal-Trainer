import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'enviar_progresso_para_opersonal_widget.dart'
    show EnviarProgressoParaOpersonalWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnviarProgressoParaOpersonalModel
    extends FlutterFlowModel<EnviarProgressoParaOpersonalWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataO3y = false;
  FFUploadedFile uploadedLocalFile_uploadDataO3y =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataO3y = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
