import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/headerweb_copy_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'avaliacoes_aluno_widget.dart' show AvaliacoesAlunoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AvaliacoesAlunoModel extends FlutterFlowModel<AvaliacoesAlunoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for headerwebCopy component.
  late HeaderwebCopyModel headerwebCopyModel;

  @override
  void initState(BuildContext context) {
    headerwebCopyModel = createModel(context, () => HeaderwebCopyModel());
  }

  @override
  void dispose() {
    headerwebCopyModel.dispose();
  }
}
