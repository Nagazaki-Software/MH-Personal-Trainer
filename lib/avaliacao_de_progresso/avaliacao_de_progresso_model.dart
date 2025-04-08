import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'avaliacao_de_progresso_widget.dart' show AvaliacaoDeProgressoWidget;
import 'package:flutter/material.dart';

class AvaliacaoDeProgressoModel
    extends FlutterFlowModel<AvaliacaoDeProgressoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsProgresso widget.
  FormFieldController<List<String>>? choiceChipsProgressoValueController;
  String? get choiceChipsProgressoValue =>
      choiceChipsProgressoValueController?.value?.firstOrNull;
  set choiceChipsProgressoValue(String? val) =>
      choiceChipsProgressoValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChipsObjetivo widget.
  FormFieldController<List<String>>? choiceChipsObjetivoValueController;
  String? get choiceChipsObjetivoValue =>
      choiceChipsObjetivoValueController?.value?.firstOrNull;
  set choiceChipsObjetivoValue(String? val) =>
      choiceChipsObjetivoValueController?.value = val != null ? [val] : [];
  // State field(s) for Slider widget.
  double? sliderValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
