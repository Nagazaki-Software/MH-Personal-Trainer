import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'qual_replicar_widget.dart' show QualReplicarWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QualReplicarModel extends FlutterFlowModel<QualReplicarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxListTile widget.
  Map<String, bool> checkboxListTileValueMap = {};
  List<String> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<SeriesRepeticoesRecord>? seriesRepsre;
  // State field(s) for CheckboxListTileDesktop widget.
  Map<String, bool> checkboxListTileDesktopValueMap = {};
  List<String> get checkboxListTileDesktopCheckedItems =>
      checkboxListTileDesktopValueMap.entries
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
