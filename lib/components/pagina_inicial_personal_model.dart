import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/baxei_o_appp_widget.dart';
import '/components/codigodeafiliacao_widget.dart';
import '/components/naoexistealuno_widget.dart';
import '/components/upgrade_to_premium_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/personal/card_acoes/card_acoes_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'pagina_inicial_personal_widget.dart' show PaginaInicialPersonalWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PaginaInicialPersonalModel
    extends FlutterFlowModel<PaginaInicialPersonalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for baxeiOAppp component.
  late BaxeiOApppModel baxeiOApppModel;
  // Model for codigodeafiliacao component.
  late CodigodeafiliacaoModel codigodeafiliacaoModel;
  // Model for upgradeToPremium component.
  late UpgradeToPremiumModel upgradeToPremiumModel;

  @override
  void initState(BuildContext context) {
    baxeiOApppModel = createModel(context, () => BaxeiOApppModel());
    codigodeafiliacaoModel =
        createModel(context, () => CodigodeafiliacaoModel());
    upgradeToPremiumModel = createModel(context, () => UpgradeToPremiumModel());
  }

  @override
  void dispose() {
    baxeiOApppModel.dispose();
    codigodeafiliacaoModel.dispose();
    upgradeToPremiumModel.dispose();
  }
}
