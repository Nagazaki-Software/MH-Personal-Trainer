import '/components/headerweb_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'configuraceos_widget.dart' show ConfiguraceosWidget;
import 'package:flutter/material.dart';

class ConfiguraceosModel extends FlutterFlowModel<ConfiguraceosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for Switch widget.
  bool? switchValue4;
  // Model for headerwebCopy component.
  late HeaderwebCopyModel headerwebCopyModel;
  // State field(s) for Switch widget.
  bool? switchValue5;
  // State field(s) for Switch widget.
  bool? switchValue6;
  // State field(s) for Switch widget.
  bool? switchValue7;
  // State field(s) for Switch widget.
  bool? switchValue8;

  @override
  void initState(BuildContext context) {
    headerwebCopyModel = createModel(context, () => HeaderwebCopyModel());
  }

  @override
  void dispose() {
    headerwebCopyModel.dispose();
  }
}
