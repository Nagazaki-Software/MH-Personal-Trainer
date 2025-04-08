import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'voce_ainda_nao_add_avaliacao_model.dart';
export 'voce_ainda_nao_add_avaliacao_model.dart';

/// voce ainda nao adicionou nenhuma avaliação para seus alunos
class VoceAindaNaoAddAvaliacaoWidget extends StatefulWidget {
  const VoceAindaNaoAddAvaliacaoWidget({super.key});

  @override
  State<VoceAindaNaoAddAvaliacaoWidget> createState() =>
      _VoceAindaNaoAddAvaliacaoWidgetState();
}

class _VoceAindaNaoAddAvaliacaoWidgetState
    extends State<VoceAindaNaoAddAvaliacaoWidget> {
  late VoceAindaNaoAddAvaliacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VoceAindaNaoAddAvaliacaoModel());

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
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x1A000000),
            offset: Offset(
              0.0,
              2.0,
            ),
            spreadRadius: 0.0,
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.rate_review_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 48.0,
                ),
              ],
            ),
            Text(
              FFLocalizations.of(context).getText(
                '00lk7ynh' /* Nenhuma avaliação adicionada */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Outfit',
                    letterSpacing: 0.0,
                  ),
            ),
            Text(
              FFLocalizations.of(context).getText(
                '89bmr1uh' /* Você ainda não adicionou nenhu... */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
