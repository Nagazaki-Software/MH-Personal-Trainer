import '/autenticacao/componente_editar_perfis/componente_editar_perfis_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'criar_dados_perfil_widget.dart' show CriarDadosPerfilWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CriarDadosPerfilModel extends FlutterFlowModel<CriarDadosPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ComponenteEditarPerfis component.
  late ComponenteEditarPerfisModel componenteEditarPerfisModel;

  @override
  void initState(BuildContext context) {
    componenteEditarPerfisModel =
        createModel(context, () => ComponenteEditarPerfisModel());
  }

  @override
  void dispose() {
    componenteEditarPerfisModel.dispose();
  }
}
