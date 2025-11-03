import '/backend/backend.dart';
import '/components/editar_se_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
    return Stack(
      children: [
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          StreamBuilder<CreateTreinosRecord>(
            stream: CreateTreinosRecord.getDocument(widget!.createTreinos!),
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
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
                                  'kdb5y8f0' /* Editar Séries Rep */,
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'EDITARSERIESREPNEW_close_rounded_ICN_ON_');
                                  logFirebaseEvent('IconButton_bottom_sheet');
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                          StreamBuilder<List<SeriesRepeticoesRecord>>(
                            stream: querySeriesRepeticoesRecord(
                              parent: widget!.user,
                              queryBuilder: (seriesRepeticoesRecord) =>
                                  seriesRepeticoesRecord.where(
                                'uidTreinos',
                                isEqualTo: widget!.createTreinos?.id,
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
                                      color: FlutterFlowTheme.of(context)
                                          .customColor3,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              List<SeriesRepeticoesRecord>
                                  listViewSeriesRepeticoesRecordList =
                                  snapshot.data!;

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                    listViewSeriesRepeticoesRecordList.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 12.0),
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
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: EditarSeWidget(
                                      key: Key(
                                          'Keyobq_${listViewIndex}_of_${listViewSeriesRepeticoesRecordList.length}'),
                                      parameter1: listViewIndex.toString(),
                                      parameter2: listViewSeriesRepeticoesRecord
                                          .seriesRep,
                                      parameter3:
                                          listViewSeriesRepeticoesRecord.carga,
                                      parameter4: listViewSeriesRepeticoesRecord
                                          .intervalo,
                                      parameter5:
                                          listViewSeriesRepeticoesRecord.tempo,
                                      parameter6:
                                          listViewSeriesRepeticoesRecord.pace,
                                      parameter7: listViewSeriesRepeticoesRecord
                                          .velocidade,
                                      parameter8: listViewSeriesRepeticoesRecord
                                          .distancia,
                                      parameter9: listViewSeriesRepeticoesRecord
                                          .inclinacao,
                                      parameter10:
                                          listViewSeriesRepeticoesRecord
                                              .cadencia,
                                      parameter11:
                                          listViewSeriesRepeticoesRecord.obs,
                                      parameter12:
                                          listViewSeriesRepeticoesRecord
                                              .reference,
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'EDITARSERIESREPNEW_CONTINUAR_BTN_ON_TAP');
                              logFirebaseEvent('Button_bottom_sheet');
                              Navigator.pop(context);
                            },
                            text: FFLocalizations.of(context).getText(
                              'ahz8srot' /* Continuar */,
                            ),
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF033F88),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ].divide(SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: StreamBuilder<CreateTreinosRecord>(
              stream: CreateTreinosRecord.getDocument(widget!.createTreinos!),
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
                  width: MediaQuery.sizeOf(context).width * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.8,
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
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 24.0, 24.0, 24.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '53xonf3z' /* Editar Séries Rep */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            font: GoogleFonts.outfit(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'teu5m2xm' /* Aqui você consegue editar
todo... */
                                        ,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            font: GoogleFonts.outfit(
                                              fontWeight: FontWeight.w300,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ],
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'EDITARSERIESREPNEW_close_rounded_ICN_ON_');
                                    logFirebaseEvent('IconButton_bottom_sheet');
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                            StreamBuilder<List<SeriesRepeticoesRecord>>(
                              stream: querySeriesRepeticoesRecord(
                                parent: widget!.user,
                                queryBuilder: (seriesRepeticoesRecord) =>
                                    seriesRepeticoesRecord.where(
                                  'uidTreinos',
                                  isEqualTo: widget!.createTreinos?.id,
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
                                        color: FlutterFlowTheme.of(context)
                                            .customColor3,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<SeriesRepeticoesRecord>
                                    listViewSeriesRepeticoesRecordList =
                                    snapshot.data!;

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      listViewSeriesRepeticoesRecordList.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 12.0),
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewSeriesRepeticoesRecord =
                                        listViewSeriesRepeticoesRecordList[
                                            listViewIndex];
                                    return Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: EditarSeWidget(
                                        key: Key(
                                            'Keytuh_${listViewIndex}_of_${listViewSeriesRepeticoesRecordList.length}'),
                                        parameter1: listViewIndex.toString(),
                                        parameter2:
                                            listViewSeriesRepeticoesRecord
                                                .seriesRep,
                                        parameter3:
                                            listViewSeriesRepeticoesRecord
                                                .carga,
                                        parameter4:
                                            listViewSeriesRepeticoesRecord
                                                .intervalo,
                                        parameter5:
                                            listViewSeriesRepeticoesRecord
                                                .tempo,
                                        parameter6:
                                            listViewSeriesRepeticoesRecord.pace,
                                        parameter7:
                                            listViewSeriesRepeticoesRecord
                                                .velocidade,
                                        parameter8:
                                            listViewSeriesRepeticoesRecord
                                                .distancia,
                                        parameter9:
                                            listViewSeriesRepeticoesRecord
                                                .inclinacao,
                                        parameter10:
                                            listViewSeriesRepeticoesRecord
                                                .cadencia,
                                        parameter11:
                                            listViewSeriesRepeticoesRecord.obs,
                                        parameter12:
                                            listViewSeriesRepeticoesRecord
                                                .reference,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'EDITARSERIESREPNEW_CONTINUAR_BTN_ON_TAP');
                                logFirebaseEvent('Button_bottom_sheet');
                                Navigator.pop(context);
                              },
                              text: FFLocalizations.of(context).getText(
                                'v1arojmf' /* Continuar */,
                              ),
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF033F88),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.readexPro(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
