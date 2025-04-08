import '/backend/backend.dart';
import '/components/comecaemdarotina_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'create_treino_widget.dart' show CreateTreinoWidget;
import 'package:flutter/material.dart';

class CreateTreinoModel extends FlutterFlowModel<CreateTreinoWidget> {
  ///  Local state fields for this page.

  bool peitoralOn = false;

  bool costasOn = false;

  bool meusTreinosOn = false;

  bool diaDoTreino = false;

  bool diaTreinoText = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for age widget.
  FocusNode? ageFocusNode1;
  TextEditingController? ageTextController1;
  String? Function(BuildContext, String?)? ageTextController1Validator;
  String? _ageTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '27adha4d' /* Por favor coloque o nome da ro... */,
      );
    }

    return null;
  }

  // State field(s) for age widget.
  FocusNode? ageFocusNode2;
  TextEditingController? ageTextController2;
  String? Function(BuildContext, String?)? ageTextController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Model for comecaemdarotina component.
  late ComecaemdarotinaModel comecaemdarotinaModel;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  List<TreinorsRecord> simpleSearchResults = [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for CheckboxListTile widget.
  Map<TreinorsRecord, bool> checkboxListTileValueMap1 = {};
  List<TreinorsRecord> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<TreinosDoProfessorRecord, bool> checkboxListTileValueMap2 = {};
  List<TreinosDoProfessorRecord> get checkboxListTileCheckedItems2 =>
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
  void initState(BuildContext context) {
    ageTextController1Validator = _ageTextController1Validator;
    comecaemdarotinaModel = createModel(context, () => ComecaemdarotinaModel());
  }

  @override
  void dispose() {
    ageFocusNode1?.dispose();
    ageTextController1?.dispose();

    ageFocusNode2?.dispose();
    ageTextController2?.dispose();

    comecaemdarotinaModel.dispose();
    textFieldFocusNode?.dispose();
    textController3?.dispose();

    tabBarController?.dispose();
  }
}
