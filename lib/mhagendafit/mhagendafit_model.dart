import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/add_location_widget.dart';
import '/components/headerweb_copy_widget.dart';
import '/components/naoexistealuno_copy_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'mhagendafit_widget.dart' show MhagendafitWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class MhagendafitModel extends FlutterFlowModel<MhagendafitWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<UsersRecord> simpleSearchResults1 = [];
  // Model for headerwebCopy component.
  late HeaderwebCopyModel headerwebCopyModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<UsersRecord> simpleSearchResults2 = [];

  @override
  void initState(BuildContext context) {
    headerwebCopyModel = createModel(context, () => HeaderwebCopyModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    headerwebCopyModel.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
