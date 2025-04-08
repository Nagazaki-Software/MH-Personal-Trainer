import '/flutter_flow/flutter_flow_util.dart';
import 'add_arquivos_widget.dart' show AddArquivosWidget;
import 'package:flutter/material.dart';

class AddArquivosModel extends FlutterFlowModel<AddArquivosWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
