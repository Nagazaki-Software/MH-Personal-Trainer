import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'loading_model.dart';
export 'loading_model.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  late LoadingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LOADING_COMP_Loading_ON_INIT_STATE');
      while (_model.temp != 10) {
        logFirebaseEvent('Loading_wait__delay');
        await Future.delayed(
          Duration(
            milliseconds: 1000,
          ),
        );
        logFirebaseEvent('Loading_update_component_state');
        _model.temp = _model.temp + 1;
        safeSetState(() {});
        logFirebaseEvent('Loading_wait__delay');
        await Future.delayed(
          Duration(
            milliseconds: 1000,
          ),
        );
        logFirebaseEvent('Loading_update_component_state');
        _model.temp = _model.temp + 1;
        safeSetState(() {});
        logFirebaseEvent('Loading_wait__delay');
        await Future.delayed(
          Duration(
            milliseconds: 1000,
          ),
        );
        logFirebaseEvent('Loading_update_component_state');
        _model.temp = _model.temp + 1;
        safeSetState(() {});
        logFirebaseEvent('Loading_wait__delay');
        await Future.delayed(
          Duration(
            milliseconds: 1000,
          ),
        );
        logFirebaseEvent('Loading_update_component_state');
        _model.temp = 0;
        safeSetState(() {});
      }
    });

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
      height: 100.0,
      decoration: BoxDecoration(),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: RichText(
          textScaler: MediaQuery.of(context).textScaler,
          text: TextSpan(
            children: [
              TextSpan(
                text: FFLocalizations.of(context).getText(
                  'fwi7uyc7' /* Loading */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.notoSansJp(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 25.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
              TextSpan(
                text: _model.temp > 0 ? '.' : ' ',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: _model.temp > 1 ? '.' : ' ',
                style: TextStyle(
                  color: Color(0xFF00A1FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: _model.temp > 2 ? '.' : ' ',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).secondary,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.readexPro(
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 25.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ),
      ),
    );
  }
}
