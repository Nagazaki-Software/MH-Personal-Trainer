import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'text_das_conversas_model.dart';
export 'text_das_conversas_model.dart';

class TextDasConversasWidget extends StatefulWidget {
  const TextDasConversasWidget({super.key});

  @override
  State<TextDasConversasWidget> createState() => _TextDasConversasWidgetState();
}

class _TextDasConversasWidgetState extends State<TextDasConversasWidget> {
  late TextDasConversasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextDasConversasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
