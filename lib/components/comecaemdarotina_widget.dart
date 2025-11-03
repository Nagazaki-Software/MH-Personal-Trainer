import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'comecaemdarotina_model.dart';
export 'comecaemdarotina_model.dart';

class ComecaemdarotinaWidget extends StatefulWidget {
  const ComecaemdarotinaWidget({super.key});

  @override
  State<ComecaemdarotinaWidget> createState() => _ComecaemdarotinaWidgetState();
}

class _ComecaemdarotinaWidgetState extends State<ComecaemdarotinaWidget> {
  late ComecaemdarotinaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComecaemdarotinaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        logFirebaseEvent('COMECAEMDAROTINA_Container_88sno6wb_ON_T');
        logFirebaseEvent('Container_date_time_picker');
        final _datePickedDate = await showDatePicker(
          context: context,
          initialDate: getCurrentTimestamp,
          firstDate: getCurrentTimestamp,
          lastDate: DateTime(2050),
          builder: (context, child) {
            return wrapInMaterialDatePickerTheme(
              context,
              child!,
              headerBackgroundColor: FlutterFlowTheme.of(context).primary,
              headerForegroundColor: FlutterFlowTheme.of(context).info,
              headerTextStyle: FlutterFlowTheme.of(context)
                  .headlineLarge
                  .override(
                    font: GoogleFonts.outfit(
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                    ),
                    fontSize: 32.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                  ),
              pickerBackgroundColor:
                  FlutterFlowTheme.of(context).secondaryBackground,
              pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
              selectedDateTimeBackgroundColor:
                  FlutterFlowTheme.of(context).secondary,
              selectedDateTimeForegroundColor:
                  FlutterFlowTheme.of(context).info,
              actionButtonForegroundColor:
                  FlutterFlowTheme.of(context).primaryText,
              iconSize: 24.0,
            );
          },
        );

        if (_datePickedDate != null) {
          safeSetState(() {
            _model.datePicked = DateTime(
              _datePickedDate.year,
              _datePickedDate.month,
              _datePickedDate.day,
            );
          });
        } else if (_model.datePicked != null) {
          safeSetState(() {
            _model.datePicked = getCurrentTimestamp;
          });
        }
        logFirebaseEvent('Container_update_app_state');
        FFAppState().comecaemdarotina = _model.datePicked;
        FFAppState().update(() {});
      },
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 2.0,
          ),
        ),
        child: Align(
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: Text(
              'Rotina começa em: ${dateTimeFormat(
                "d/M/y",
                _model.datePicked,
                locale: FFLocalizations.of(context).languageCode,
              )}',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.readexPro(
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
