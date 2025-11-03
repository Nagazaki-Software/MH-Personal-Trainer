import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/escolhasualinguagem_widget.dart';
import '/components/headerweb_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'configuracoes_personal_trainner_widget.dart'
    show ConfiguracoesPersonalTrainnerWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfiguracoesPersonalTrainnerModel
    extends FlutterFlowModel<ConfiguracoesPersonalTrainnerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue1;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;
  // State field(s) for Switch widget.
  bool? switchValue2;

  @override
  void initState(BuildContext context) {
    headerwebModel = createModel(context, () => HeaderwebModel());
  }

  @override
  void dispose() {
    headerwebModel.dispose();
  }
}
