import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'treinos_pro_aluno_widget.dart' show TreinosProAlunoWidget;
import 'package:flutter/material.dart';

class TreinosProAlunoModel extends FlutterFlowModel<TreinosProAlunoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for headerweb component.
  late HeaderwebModel headerwebModel;

  @override
  void initState(BuildContext context) {
    headerwebModel = createModel(context, () => HeaderwebModel());
  }

  @override
  void dispose() {
    headerwebModel.dispose();
  }
}
