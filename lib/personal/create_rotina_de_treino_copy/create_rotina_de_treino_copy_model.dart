import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_rotina_de_treino_copy_widget.dart'
    show CreateRotinaDeTreinoCopyWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CreateRotinaDeTreinoCopyModel
    extends FlutterFlowModel<CreateRotinaDeTreinoCopyWidget> {
  ///  Local state fields for this page.

  List<String> treinosSelecionados = [];
  void addToTreinosSelecionados(String item) => treinosSelecionados.add(item);
  void removeFromTreinosSelecionados(String item) =>
      treinosSelecionados.remove(item);
  void removeAtIndexFromTreinosSelecionados(int index) =>
      treinosSelecionados.removeAt(index);
  void insertAtIndexInTreinosSelecionados(int index, String item) =>
      treinosSelecionados.insert(index, item);
  void updateTreinosSelecionadosAtIndex(int index, Function(String) updateFn) =>
      treinosSelecionados[index] = updateFn(treinosSelecionados[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in CreateRotinaDeTreinoCopy widget.
  TreinorsRecord? treinors;
  // Stores action output result for [Firestore Query - Query a collection] action in CreateRotinaDeTreinoCopy widget.
  List<TreinorsRecord>? treinorsList;
  Completer<CreateTreinosRecord>? documentRequestCompleter;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<TreinorsRecord> simpleSearchResults = [];
  // State field(s) for CheckboxListTile widget.
  Map<TreinorsRecord, bool> checkboxListTileValueMap1 = {};
  List<TreinorsRecord> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<TreinorsRecord, bool> checkboxListTileValueMap2 = {};
  List<TreinorsRecord> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<TreinorsRecord, bool> checkboxListTileValueMap3 = {};
  List<TreinorsRecord> get checkboxListTileCheckedItems3 =>
      checkboxListTileValueMap3.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  Future waitForDocumentRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = documentRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
