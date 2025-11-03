import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'avaliacao_postural_nova_copy_widget.dart'
    show AvaliacaoPosturalNovaCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AvaliacaoPosturalNovaCopyModel
    extends FlutterFlowModel<AvaliacaoPosturalNovaCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (avaliacaoPostural)] action in Container widget.
  ApiCallResponse? imageFrontal;
  // Stores action output result for [Backend Call - API (avaliacaoPostural)] action in Container widget.
  ApiCallResponse? imageLateral;
  // Stores action output result for [Backend Call - API (avaliacaoPostural)] action in Container widget.
  ApiCallResponse? imageCostas;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;
  // Stores action output result for [Backend Call - API (avaliacaoPostural)] action in Container widget.
  ApiCallResponse? image1;
  // Stores action output result for [Backend Call - API (avaliacaoPostural)] action in Container widget.
  ApiCallResponse? image2;
  // Stores action output result for [Backend Call - API (avaliacaoPostural)] action in Container widget.
  ApiCallResponse? image3;

  @override
  void initState(BuildContext context) {
    headerwebModel = createModel(context, () => HeaderwebModel());
  }

  @override
  void dispose() {
    headerwebModel.dispose();
  }
}
