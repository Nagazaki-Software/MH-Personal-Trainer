import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'naoteenviouumtreino_model.dart';
export 'naoteenviouumtreino_model.dart';

/// container seu personal ainda nao te enviou um treino
class NaoteenviouumtreinoWidget extends StatefulWidget {
  const NaoteenviouumtreinoWidget({super.key});

  @override
  State<NaoteenviouumtreinoWidget> createState() =>
      _NaoteenviouumtreinoWidgetState();
}

class _NaoteenviouumtreinoWidgetState extends State<NaoteenviouumtreinoWidget> {
  late NaoteenviouumtreinoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NaoteenviouumtreinoModel());

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
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.fitness_center,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 48.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                '8a8pdthf' /* Nenhum treino disponível */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Outfit',
                    letterSpacing: 0.0,
                  ),
            ),
            Text(
              FFLocalizations.of(context).getText(
                'ofmtzuun' /* Seu personal trainer ainda não... */,
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
