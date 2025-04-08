import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'editar_treinos_modo_admin_widget.dart'
    show EditarTreinosModoAdminWidget;
import 'package:flutter/material.dart';

class EditarTreinosModoAdminModel
    extends FlutterFlowModel<EditarTreinosModoAdminWidget> {
  ///  Local state fields for this page.

  bool searchOn = false;

  bool? fullListOn = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<TreinorsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
