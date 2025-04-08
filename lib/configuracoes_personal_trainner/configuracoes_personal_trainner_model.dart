import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'configuracoes_personal_trainner_widget.dart'
    show ConfiguracoesPersonalTrainnerWidget;
import 'package:flutter/material.dart';

class ConfiguracoesPersonalTrainnerModel
    extends FlutterFlowModel<ConfiguracoesPersonalTrainnerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue1;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;
  // State field(s) for Switch widget.
  bool? switchValue2;

  @override
  void initState(BuildContext context) {
    headerwebModel = createModel(context, () => HeaderwebModel());
  }

  @override
  void dispose() {
    headerwebModel.dispose();
  }
}
