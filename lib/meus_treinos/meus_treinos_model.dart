import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'meus_treinos_widget.dart' show MeusTreinosWidget;
import 'package:flutter/material.dart';

class MeusTreinosModel extends FlutterFlowModel<MeusTreinosWidget> {
  ///  Local state fields for this page.

  int? treinosRandow = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in meusTreinos widget.
  AvaliacoesFisicasRecord? queryAVFisica;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
