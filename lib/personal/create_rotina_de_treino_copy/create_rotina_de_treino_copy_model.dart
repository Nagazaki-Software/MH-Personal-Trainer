import '/backend/backend.dart';
import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_rotina_de_treino_copy_widget.dart'
    show CreateRotinaDeTreinoCopyWidget;
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<TreinorsRecord> simpleSearchResults1 = [];
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

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<TreinorsRecord> simpleSearchResults2 = [];
  // State field(s) for CheckboxListTile widget.
  Map<TreinorsRecord, bool> checkboxListTileValueMap4 = {};
  List<TreinorsRecord> get checkboxListTileCheckedItems4 =>
      checkboxListTileValueMap4.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<TreinorsRecord, bool> checkboxListTileValueMap5 = {};
  List<TreinorsRecord> get checkboxListTileCheckedItems5 =>
      checkboxListTileValueMap5.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<TreinorsRecord, bool> checkboxListTileValueMap6 = {};
  List<TreinorsRecord> get checkboxListTileCheckedItems6 =>
      checkboxListTileValueMap6.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Model for headerweb component.
  late HeaderwebModel headerwebModel;

  @override
  void initState(BuildContext context) {
    headerwebModel = createModel(context, () => HeaderwebModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    headerwebModel.dispose();
  }
}
