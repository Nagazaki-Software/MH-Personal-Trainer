import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detalhesdaassintaura_widget.dart' show DetalhesdaassintauraWidget;
import 'package:flutter/material.dart';

class DetalhesdaassintauraModel
    extends FlutterFlowModel<DetalhesdaassintauraWidget> {
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
