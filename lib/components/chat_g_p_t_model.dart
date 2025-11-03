import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'chat_g_p_t_widget.dart' show ChatGPTWidget;
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatGPTModel extends FlutterFlowModel<ChatGPTWidget> {
  ///  Local state fields for this component.

  MessageStruct? message;
  void updateMessageStruct(Function(MessageStruct) updateFn) {
    updateFn(message ??= MessageStruct());
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
