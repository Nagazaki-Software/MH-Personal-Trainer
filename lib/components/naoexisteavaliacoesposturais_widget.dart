import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'naoexisteavaliacoesposturais_model.dart';
export 'naoexisteavaliacoesposturais_model.dart';

/// container nao existe avaliacoes posturais
class NaoexisteavaliacoesposturaisWidget extends StatefulWidget {
  const NaoexisteavaliacoesposturaisWidget({super.key});

  @override
  State<NaoexisteavaliacoesposturaisWidget> createState() =>
      _NaoexisteavaliacoesposturaisWidgetState();
}

class _NaoexisteavaliacoesposturaisWidgetState
    extends State<NaoexisteavaliacoesposturaisWidget> {
  late NaoexisteavaliacoesposturaisModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NaoexisteavaliacoesposturaisModel());

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.assessment,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 40.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'aldo5khy' /* Nenhuma avaliação postural */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                  ),
            ),
            Text(
              FFLocalizations.of(context).getText(
                'ounlbvhi' /* Realize sua primeira avaliação... */,
              ),
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
