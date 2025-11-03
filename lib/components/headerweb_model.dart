import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/config_header_web_widget.dart';
import '/components/conversas_bottom_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'headerweb_widget.dart' show HeaderwebWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HeaderwebModel extends FlutterFlowModel<HeaderwebWidget> {
  ///  Local state fields for this component.

  bool configBool = false;

  bool abridoOuNao = false;

  bool fecharMsg = false;

  ///  State fields for stateful widgets in this component.

  // Model for configHeaderWeb component.
  late ConfigHeaderWebModel configHeaderWebModel;

  @override
  void initState(BuildContext context) {
    configHeaderWebModel = createModel(context, () => ConfigHeaderWebModel());
  }

  @override
  void dispose() {
    configHeaderWebModel.dispose();
  }
}
