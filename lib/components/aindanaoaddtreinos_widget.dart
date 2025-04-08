import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'aindanaoaddtreinos_model.dart';
export 'aindanaoaddtreinos_model.dart';

/// voce ainda nao adicionou treinos para este aluno
class AindanaoaddtreinosWidget extends StatefulWidget {
  const AindanaoaddtreinosWidget({super.key});

  @override
  State<AindanaoaddtreinosWidget> createState() =>
      _AindanaoaddtreinosWidgetState();
}

class _AindanaoaddtreinosWidgetState extends State<AindanaoaddtreinosWidget> {
  late AindanaoaddtreinosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AindanaoaddtreinosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'bj9ezge5' /* Nenhum treino adicionado */,
              ),
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Outfit',
                    letterSpacing: 0.0,
                  ),
            ),
            Text(
              FFLocalizations.of(context).getText(
                'm3t9wk5v' /* Você ainda não adicionou nenhu... */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
