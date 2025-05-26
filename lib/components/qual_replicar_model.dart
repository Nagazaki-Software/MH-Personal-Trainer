import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'qual_replicar_widget.dart' show QualReplicarWidget;
import 'package:flutter/material.dart';

class QualReplicarModel extends FlutterFlowModel<QualReplicarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxListTile widget.
  Map<String, bool> checkboxListTileValueMap1 = {};
  List<String> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<SeriesRepeticoesRecord>? seriesRepsre;
  // State field(s) for CheckboxListTile widget.
  Map<String, bool> checkboxListTileValueMap2 = {};
  List<String> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<SeriesRepeticoesRecord>? seriesRepsre3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
