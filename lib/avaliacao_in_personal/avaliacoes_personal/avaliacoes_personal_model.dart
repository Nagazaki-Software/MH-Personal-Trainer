import '/backend/backend.dart';
import '/components/avaliacoes_parte_personal_widget.dart';
import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'avaliacoes_personal_widget.dart' show AvaliacoesPersonalWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AvaliacoesPersonalModel
    extends FlutterFlowModel<AvaliacoesPersonalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for avaliacoesPartePersonal component.
  late AvaliacoesPartePersonalModel avaliacoesPartePersonalModel1;
  // Model for avaliacoesPartePersonal component.
  late AvaliacoesPartePersonalModel avaliacoesPartePersonalModel2;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;

  @override
  void initState(BuildContext context) {
    avaliacoesPartePersonalModel1 =
        createModel(context, () => AvaliacoesPartePersonalModel());
    avaliacoesPartePersonalModel2 =
        createModel(context, () => AvaliacoesPartePersonalModel());
    headerwebModel = createModel(context, () => HeaderwebModel());
  }

  @override
  void dispose() {
    avaliacoesPartePersonalModel1.dispose();
    avaliacoesPartePersonalModel2.dispose();
    headerwebModel.dispose();
  }
}
