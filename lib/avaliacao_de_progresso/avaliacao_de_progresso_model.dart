import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/treinoavaliadocomsuceso_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'avaliacao_de_progresso_widget.dart' show AvaliacaoDeProgressoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
