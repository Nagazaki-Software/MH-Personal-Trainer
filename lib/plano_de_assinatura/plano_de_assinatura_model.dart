import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'plano_de_assinatura_widget.dart' show PlanoDeAssinaturaWidget;
import 'package:flutter/material.dart';

class PlanoDeAssinaturaModel extends FlutterFlowModel<PlanoDeAssinaturaWidget> {
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
