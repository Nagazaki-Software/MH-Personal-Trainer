import '/flutter_flow/flutter_flow_util.dart';
import 'card_acoes_copy_copy_copy_widget.dart' show CardAcoesCopyCopyCopyWidget;
import 'package:flutter/material.dart';

class CardAcoesCopyCopyCopyModel
    extends FlutterFlowModel<CardAcoesCopyCopyCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for age widget.
  FocusNode? ageFocusNode1;
  TextEditingController? ageTextController1;
  String? Function(BuildContext, String?)? ageTextController1Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode2;
  TextEditingController? ageTextController2;
  String? Function(BuildContext, String?)? ageTextController2Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode3;
  TextEditingController? ageTextController3;
  String? Function(BuildContext, String?)? ageTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ageFocusNode1?.dispose();
    ageTextController1?.dispose();

    ageFocusNode2?.dispose();
    ageTextController2?.dispose();

    ageFocusNode3?.dispose();
    ageTextController3?.dispose();
  }
}
