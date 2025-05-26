import '/components/config_header_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'headerweb_widget.dart' show HeaderwebWidget;
import 'package:flutter/material.dart';

class HeaderwebModel extends FlutterFlowModel<HeaderwebWidget> {
  ///  Local state fields for this component.

  bool configBool = false;

  ///  State fields for stateful widgets in this component.

  // Model for configHeaderWeb component.
  late ConfigHeaderWebModel configHeaderWebModel;

  @override
  void initState(BuildContext context) {
    configHeaderWebModel = createModel(context, () => ConfigHeaderWebModel());
  }

  @override
  void dispose() {
    configHeaderWebModel.dispose();
  }
}
