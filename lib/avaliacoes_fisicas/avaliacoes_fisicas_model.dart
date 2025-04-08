import '/backend/backend.dart';
import '/components/feitopelomh_widget.dart';
import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'avaliacoes_fisicas_widget.dart' show AvaliacoesFisicasWidget;
import 'package:flutter/material.dart';

class AvaliacoesFisicasModel extends FlutterFlowModel<AvaliacoesFisicasWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in avaliacoesFisicas widget.
  List<AvaliacoesFisicasRecord>? queryAvFisicas;
  // Stores action output result for [Firestore Query - Query a collection] action in avaliacoesFisicas widget.
  AvaliacoesFisicasRecord? queryavfisica;
  // Stores action output result for [Gemini - Generate Text] action in avaliacoesFisicas widget.
  String? gemii;
  // Model for feitopelomh component.
  late FeitopelomhModel feitopelomhModel1;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;
  // Model for feitopelomh component.
  late FeitopelomhModel feitopelomhModel2;

  @override
  void initState(BuildContext context) {
    feitopelomhModel1 = createModel(context, () => FeitopelomhModel());
    headerwebModel = createModel(context, () => HeaderwebModel());
    feitopelomhModel2 = createModel(context, () => FeitopelomhModel());
  }

  @override
  void dispose() {
    feitopelomhModel1.dispose();
    headerwebModel.dispose();
    feitopelomhModel2.dispose();
  }
}
