import '/backend/backend.dart';
import '/components/pagamentos_no_app_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_page_widget.dart' show AdminPageWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class AdminPageModel extends FlutterFlowModel<AdminPageWidget> {
  ///  State fields for stateful widgets in this page.

  Completer<int>? firestoreRequestCompleter1;
  Completer<List<UsersRecord>>? firestoreRequestCompleter2;
  // Model for pagamentosNoApp component.
  late PagamentosNoAppModel pagamentosNoAppModel;

  @override
  void initState(BuildContext context) {
    pagamentosNoAppModel = createModel(context, () => PagamentosNoAppModel());
  }

  @override
  void dispose() {
    pagamentosNoAppModel.dispose();
  }

  /// Additional helper methods.
  Future waitForFirestoreRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForFirestoreRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
