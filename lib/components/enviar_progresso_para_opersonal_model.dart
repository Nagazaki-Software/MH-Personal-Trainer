import '/flutter_flow/flutter_flow_util.dart';
import 'enviar_progresso_para_opersonal_widget.dart'
    show EnviarProgressoParaOpersonalWidget;
import 'package:flutter/material.dart';

class EnviarProgressoParaOpersonalModel
    extends FlutterFlowModel<EnviarProgressoParaOpersonalWidget> {
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
