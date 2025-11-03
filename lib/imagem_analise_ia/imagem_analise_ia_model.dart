import '/backend/api_requests/api_calls.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'imagem_analise_ia_widget.dart' show ImagemAnaliseIaWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ImagemAnaliseIaModel extends FlutterFlowModel<ImagemAnaliseIaWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData8gj = false;
  FFUploadedFile uploadedLocalFile_uploadData8gj =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData8gj = '';

  // Stores action output result for [Backend Call - API (avaliacaoPostural)] action in IconButton widget.
  ApiCallResponse? apiResultf7v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
