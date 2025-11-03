import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'add_arquivos_widget.dart' show AddArquivosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddArquivosModel extends FlutterFlowModel<AddArquivosWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataJ3r = false;
  FFUploadedFile uploadedLocalFile_uploadDataJ3r =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataJ3r = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
