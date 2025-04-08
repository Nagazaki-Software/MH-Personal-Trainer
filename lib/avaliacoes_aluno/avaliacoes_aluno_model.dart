import '/components/headerweb_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'avaliacoes_aluno_widget.dart' show AvaliacoesAlunoWidget;
import 'package:flutter/material.dart';

class AvaliacoesAlunoModel extends FlutterFlowModel<AvaliacoesAlunoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for headerwebCopy component.
  late HeaderwebCopyModel headerwebCopyModel;

  @override
  void initState(BuildContext context) {
    headerwebCopyModel = createModel(context, () => HeaderwebCopyModel());
  }

  @override
  void dispose() {
    headerwebCopyModel.dispose();
  }
}
