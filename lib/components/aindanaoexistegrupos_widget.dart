import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'aindanaoexistegrupos_model.dart';
export 'aindanaoexistegrupos_model.dart';

/// Ainda não existe grupo
class AindanaoexistegruposWidget extends StatefulWidget {
  const AindanaoexistegruposWidget({super.key});

  @override
  State<AindanaoexistegruposWidget> createState() =>
      _AindanaoexistegruposWidgetState();
}

class _AindanaoexistegruposWidgetState
    extends State<AindanaoexistegruposWidget> {
  late AindanaoexistegruposModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AindanaoexistegruposModel());

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
      height: 160.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.group_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 40.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'lqhlctyi' /* Grupo não existe */,
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                  ),
            ),
            Text(
              FFLocalizations.of(context).getText(
                'fw9m61tv' /* Crie um grupo para aparecer aq... */,
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
