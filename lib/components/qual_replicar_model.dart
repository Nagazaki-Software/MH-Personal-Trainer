import '/flutter_flow/flutter_flow_util.dart';
import 'qual_replicar_widget.dart' show QualReplicarWidget;
import 'package:flutter/material.dart';

class QualReplicarModel extends FlutterFlowModel<QualReplicarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxListTile widget.
  Map<String, bool> checkboxListTileValueMap = {};
  List<String> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
