import '/backend/backend.dart';
import '/components/comecaemdarotina_widget.dart';
import '/components/headerweb_widget.dart';
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

  bool nullTextfield = false;

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
  String? _ageTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yt9punsn' /* Adicione um nome a esta rotina... */,
      );
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Model for comecaemdarotina component.
  late ComecaemdarotinaModel comecaemdarotinaModel1;
  DateTime? datePicked1;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? forms;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CreateTreinosRecord? treinoscreates;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for age widget.
  FocusNode? ageFocusNode3;
  TextEditingController? ageTextController3;
  String? Function(BuildContext, String?)? ageTextController3Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode4;
  TextEditingController? ageTextController4;
  String? Function(BuildContext, String?)? ageTextController4Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // State field(s) for DropDown widget.
  String? dropDownValue8;
  FormFieldController<String>? dropDownValueController8;
  // Model for comecaemdarotina component.
  late ComecaemdarotinaModel comecaemdarotinaModel2;
  DateTime? datePicked2;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? formsr;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CreateTreinosRecord? treinoscreatesrs;

  @override
  void initState(BuildContext context) {
    ageTextController1Validator = _ageTextController1Validator;
    ageTextController2Validator = _ageTextController2Validator;
    comecaemdarotinaModel1 =
        createModel(context, () => ComecaemdarotinaModel());
    headerwebModel = createModel(context, () => HeaderwebModel());
    comecaemdarotinaModel2 =
        createModel(context, () => ComecaemdarotinaModel());
  }

  @override
  void dispose() {
    ageFocusNode1?.dispose();
    ageTextController1?.dispose();

    ageFocusNode2?.dispose();
    ageTextController2?.dispose();

    comecaemdarotinaModel1.dispose();
    headerwebModel.dispose();
    ageFocusNode3?.dispose();
    ageTextController3?.dispose();

    ageFocusNode4?.dispose();
    ageTextController4?.dispose();

    comecaemdarotinaModel2.dispose();
  }
}
