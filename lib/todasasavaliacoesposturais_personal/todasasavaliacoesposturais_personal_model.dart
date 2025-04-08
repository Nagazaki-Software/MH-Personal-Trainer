import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'todasasavaliacoesposturais_personal_widget.dart'
    show TodasasavaliacoesposturaisPersonalWidget;
import 'package:flutter/material.dart';

class TodasasavaliacoesposturaisPersonalModel
    extends FlutterFlowModel<TodasasavaliacoesposturaisPersonalWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Gemini - Generate Text] action in todasasavaliacoesposturaisPersonal widget.
  String? avPostural;
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
