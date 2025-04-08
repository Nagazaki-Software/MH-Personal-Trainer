import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ver_treinos_widget.dart' show VerTreinosWidget;
import 'package:flutter/material.dart';

class VerTreinosModel extends FlutterFlowModel<VerTreinosWidget> {
  ///  Local state fields for this page.

  bool iniciarTreino = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in VerTreinos widget.
  List<CreateTreinosRecord>? createTreinos;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
