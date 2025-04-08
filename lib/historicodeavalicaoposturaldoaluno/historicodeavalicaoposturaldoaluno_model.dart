import '/components/feitopelomh_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'historicodeavalicaoposturaldoaluno_widget.dart'
    show HistoricodeavalicaoposturaldoalunoWidget;
import 'package:flutter/material.dart';

class HistoricodeavalicaoposturaldoalunoModel
    extends FlutterFlowModel<HistoricodeavalicaoposturaldoalunoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Gemini - Generate Text] action in historicodeavalicaoposturaldoaluno widget.
  String? avPostural;
  // Model for feitopelomh component.
  late FeitopelomhModel feitopelomhModel;

  @override
  void initState(BuildContext context) {
    feitopelomhModel = createModel(context, () => FeitopelomhModel());
  }

  @override
  void dispose() {
    feitopelomhModel.dispose();
  }
}
