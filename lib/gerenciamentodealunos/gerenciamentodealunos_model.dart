import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/aindanaoexistegrupos_widget.dart';
import '/components/headerweb_widget.dart';
import '/components/mandeparaseualunocriarconta_widget.dart';
import '/components/naoexistealuno_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/personal/card_acoes/card_acoes_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'gerenciamentodealunos_widget.dart' show GerenciamentodealunosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:text_search/text_search.dart';

class GerenciamentodealunosModel
    extends FlutterFlowModel<GerenciamentodealunosWidget> {
  ///  Local state fields for this page.

  String? tipoDeAssinatura = 'Todos';

  bool filtros = false;

  String howStep = 'All';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in TextField widget.
  List<UsersRecord>? queryUsers;
  List<UsersRecord> simpleSearchResults1 = [];
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  GrupoDeGerenciamentosRecord? queryUsres;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in TextField widget.
  List<UsersRecord>? queryUserses;
  List<UsersRecord> simpleSearchResults2 = [];
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  GrupoDeGerenciamentosRecord? queryUsrese;
  // Model for headerweb component.
  late HeaderwebModel headerwebModel;

  @override
  void initState(BuildContext context) {
    headerwebModel = createModel(context, () => HeaderwebModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    headerwebModel.dispose();
  }
}
