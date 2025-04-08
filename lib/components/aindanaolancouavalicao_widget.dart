import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'aindanaolancouavalicao_model.dart';
export 'aindanaolancouavalicao_model.dart';

/// container seu personal ainda nao lancou uma avaliacao
class AindanaolancouavalicaoWidget extends StatefulWidget {
  const AindanaolancouavalicaoWidget({super.key});

  @override
  State<AindanaolancouavalicaoWidget> createState() =>
      _AindanaolancouavalicaoWidgetState();
}

class _AindanaolancouavalicaoWidgetState
    extends State<AindanaolancouavalicaoWidget> {
  late AindanaolancouavalicaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AindanaolancouavalicaoModel());

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
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.assessment_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'lh5vkhdg' /* Avaliação Pendente */,
                  ),
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ].divide(SizedBox(width: 12.0)),
            ),
            Text(
              FFLocalizations.of(context).getText(
                'x4e4apsk' /* Seu personal trainer ainda não... */,
              ),
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
