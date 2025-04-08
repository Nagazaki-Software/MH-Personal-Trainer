import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'treinos_for_cliente_copy_copy_copy_widget.dart'
    show TreinosForClienteCopyCopyCopyWidget;
import 'package:flutter/material.dart';

class TreinosForClienteCopyCopyCopyModel
    extends FlutterFlowModel<TreinosForClienteCopyCopyCopyWidget> {
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
