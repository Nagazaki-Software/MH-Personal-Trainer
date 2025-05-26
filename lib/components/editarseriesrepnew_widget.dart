import '/backend/backend.dart';
import '/components/editar_se_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'editarseriesrepnew_model.dart';
export 'editarseriesrepnew_model.dart';

/// bottom sheet editar series e repeticoes
class EditarseriesrepnewWidget extends StatefulWidget {
  const EditarseriesrepnewWidget({
    super.key,
    required this.user,
    required this.createTreinos,
  });

  final DocumentReference? user;
  final DocumentReference? createTreinos;

  @override
  State<EditarseriesrepnewWidget> createState() =>
      _EditarseriesrepnewWidgetState();
}

class _EditarseriesrepnewWidgetState extends State<EditarseriesrepnewWidget> {
  late EditarseriesrepnewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarseriesrepnewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CreateTreinosRecord>(
      stream: CreateTreinosRecord.getDocument(widget.createTreinos!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitFadingFour(
                color: FlutterFlowTheme.of(context).customColor3,
                size: 50.0,
              ),
            ),
          );
        }

        final containerCreateTreinosRecord = snapshot.data!;

        return Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    -2.0,
                  ),
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'q9zajszg' /* Editar Séries Rep */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.close_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'EDITARSERIESREPNEW_close_rounded_ICN_ON_');
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    StreamBuilder<List<SeriesRepeticoesRecord>>(
                      stream: querySeriesRepeticoesRecord(
                        parent: widget.user,
                        queryBuilder: (seriesRepeticoesRecord) =>
                            seriesRepeticoesRecord.where(
                          'uidTreinos',
                          isEqualTo: widget.createTreinos?.id,
                        ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitFadingFour(
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        List<SeriesRepeticoesRecord>
                            listViewSeriesRepeticoesRecordList = snapshot.data!;

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewSeriesRepeticoesRecordList.length,
                          separatorBuilder: (_, __) => SizedBox(height: 12.0),
                          itemBuilder: (context, listViewIndex) {
                            final listViewSeriesRepeticoesRecord =
                                listViewSeriesRepeticoesRecordList[
                                    listViewIndex];
                            return Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                              ),
                              child: EditarSeWidget(
                                key: Key(
                                    'Keyobq_${listViewIndex}_of_${listViewSeriesRepeticoesRecordList.length}'),
                                parameter1: listViewIndex.toString(),
                                parameter2:
                                    listViewSeriesRepeticoesRecord.seriesRep,
                                parameter3:
                                    listViewSeriesRepeticoesRecord.carga,
                                parameter4:
                                    listViewSeriesRepeticoesRecord.intervalo,
                                parameter5:
                                    listViewSeriesRepeticoesRecord.tempo,
                                parameter6: listViewSeriesRepeticoesRecord.pace,
                                parameter7:
                                    listViewSeriesRepeticoesRecord.velocidade,
                                parameter8:
                                    listViewSeriesRepeticoesRecord.distancia,
                                parameter9:
                                    listViewSeriesRepeticoesRecord.inclinacao,
                                parameter10:
                                    listViewSeriesRepeticoesRecord.cadencia,
                                parameter11: listViewSeriesRepeticoesRecord.obs,
                                parameter12:
                                    listViewSeriesRepeticoesRecord.reference,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ].divide(SizedBox(height: 20.0)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
