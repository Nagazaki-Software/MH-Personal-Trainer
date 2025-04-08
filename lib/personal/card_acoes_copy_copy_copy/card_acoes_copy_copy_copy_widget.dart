import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'card_acoes_copy_copy_copy_model.dart';
export 'card_acoes_copy_copy_copy_model.dart';

class CardAcoesCopyCopyCopyWidget extends StatefulWidget {
  const CardAcoesCopyCopyCopyWidget({
    super.key,
    required this.cliente,
    required this.seriesRep,
    required this.treinosNoLIst,
  });

  final DocumentReference? cliente;
  final DocumentReference? seriesRep;
  final String? treinosNoLIst;

  @override
  State<CardAcoesCopyCopyCopyWidget> createState() =>
      _CardAcoesCopyCopyCopyWidgetState();
}

class _CardAcoesCopyCopyCopyWidgetState
    extends State<CardAcoesCopyCopyCopyWidget> {
  late CardAcoesCopyCopyCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardAcoesCopyCopyCopyModel());

    _model.ageTextController1 ??= TextEditingController();
    _model.ageFocusNode1 ??= FocusNode();
    _model.ageFocusNode1!.addListener(() => safeSetState(() {}));
    _model.ageTextController2 ??= TextEditingController();
    _model.ageFocusNode2 ??= FocusNode();
    _model.ageFocusNode2!.addListener(() => safeSetState(() {}));
    _model.ageTextController3 ??= TextEditingController();
    _model.ageFocusNode3 ??= FocusNode();
    _model.ageFocusNode3!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(widget.cliente!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitSquareCircle(
                color: FlutterFlowTheme.of(context).primary,
                size: 50.0,
              ),
            ),
          );
        }

        final columnUsersRecord = snapshot.data!;

        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StreamBuilder<CreateTreinosRecord>(
              stream: CreateTreinosRecord.getDocument(widget.seriesRep!),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: SpinKitSquareCircle(
                        color: FlutterFlowTheme.of(context).primary,
                        size: 50.0,
                      ),
                    ),
                  );
                }

                final containerCreateTreinosRecord = snapshot.data!;

                return Container(
                  width: double.infinity,
                  height: 350.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: StreamBuilder<List<SeriesRepeticoesRecord>>(
                      stream: querySeriesRepeticoesRecord(
                        parent: widget.cliente,
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitSquareCircle(
                                color: FlutterFlowTheme.of(context).primary,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        List<SeriesRepeticoesRecord>
                            columnSeriesRepeticoesRecordList = snapshot.data!;
                        final columnSeriesRepeticoesRecord =
                            columnSeriesRepeticoesRecordList.isNotEmpty
                                ? columnSeriesRepeticoesRecordList.first
                                : null;

                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              controller: _model.ageTextController1,
                              focusNode: _model.ageFocusNode1,
                              autofocus: true,
                              textCapitalization: TextCapitalization.words,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  '8upmke7k' /* Séries/Reps: */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF606A85),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF606A85),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                errorStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Figtree',
                                      color: Color(0xFFFF5963),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE5E7EB),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF6F61EF),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                filled: true,
                                fillColor:
                                    (_model.ageFocusNode1?.hasFocus ?? false)
                                        ? Color(0x4D9489F5)
                                        : Colors.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 20.0, 16.0, 20.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Figtree',
                                    color: Color(0xFF15161E),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.ageTextController1Validator
                                  .asValidator(context),
                            ),
                            TextFormField(
                              controller: _model.ageTextController2,
                              focusNode: _model.ageFocusNode2,
                              autofocus: true,
                              textCapitalization: TextCapitalization.words,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'l4xpqzye' /* Intervalo(s): */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF606A85),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF606A85),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                errorStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Figtree',
                                      color: Color(0xFFFF5963),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE5E7EB),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF6F61EF),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFFF5963),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                filled: true,
                                fillColor:
                                    (_model.ageFocusNode2?.hasFocus ?? false)
                                        ? Color(0x4D9489F5)
                                        : Colors.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 20.0, 16.0, 20.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Figtree',
                                    color: Color(0xFF15161E),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.ageTextController2Validator
                                  .asValidator(context),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: TextFormField(
                                controller: _model.ageTextController3,
                                focusNode: _model.ageFocusNode3,
                                autofocus: true,
                                textCapitalization: TextCapitalization.words,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    't1c9j123' /* Carga: */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF606A85),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF606A85),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  errorStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        color: Color(0xFFFF5963),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFE5E7EB),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF6F61EF),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF5963),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF5963),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor:
                                      (_model.ageFocusNode3?.hasFocus ?? false)
                                          ? Color(0x4D9489F5)
                                          : Colors.white,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 20.0, 16.0, 20.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Figtree',
                                      color: Color(0xFF15161E),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model.ageTextController3Validator
                                    .asValidator(context),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'CARD_ACOES_COPY_COPY_COPY_ADICIONAR_SRIE');
                                      if (columnSeriesRepeticoesRecord
                                                  ?.intervalo !=
                                              null &&
                                          columnSeriesRepeticoesRecord
                                                  ?.intervalo !=
                                              '') {
                                        await columnSeriesRepeticoesRecord!
                                            .reference
                                            .update(
                                                createSeriesRepeticoesRecordData(
                                          seriesRep:
                                              _model.ageTextController1.text,
                                          carga: _model.ageTextController3.text,
                                          intervalo:
                                              _model.ageTextController2.text,
                                          treino: widget.treinosNoLIst,
                                          uidTreinos: widget.seriesRep?.id,
                                        ));
                                      } else if (columnSeriesRepeticoesRecord
                                                  ?.seriesRep !=
                                              null &&
                                          columnSeriesRepeticoesRecord
                                                  ?.seriesRep !=
                                              '') {
                                        await columnSeriesRepeticoesRecord!
                                            .reference
                                            .update(
                                                createSeriesRepeticoesRecordData(
                                          seriesRep:
                                              _model.ageTextController1.text,
                                          carga: _model.ageTextController3.text,
                                          intervalo:
                                              _model.ageTextController2.text,
                                          uidTreinos: widget.seriesRep?.id,
                                        ));
                                      } else if (columnSeriesRepeticoesRecord
                                                  ?.carga !=
                                              null &&
                                          columnSeriesRepeticoesRecord?.carga !=
                                              '') {
                                        await columnSeriesRepeticoesRecord!
                                            .reference
                                            .update(
                                                createSeriesRepeticoesRecordData(
                                          seriesRep:
                                              _model.ageTextController1.text,
                                          carga: _model.ageTextController3.text,
                                          intervalo:
                                              _model.ageTextController2.text,
                                          uidTreinos: widget.seriesRep?.id,
                                        ));
                                      } else {
                                        await SeriesRepeticoesRecord.createDoc(
                                                widget.cliente!)
                                            .set(
                                                createSeriesRepeticoesRecordData(
                                          seriesRep:
                                              _model.ageTextController1.text,
                                          carga: _model.ageTextController3.text,
                                          intervalo:
                                              _model.ageTextController2.text,
                                          treino: widget.treinosNoLIst,
                                          uidTreinos: widget.seriesRep?.id,
                                        ));
                                      }

                                      context.pop();
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'kafdoywk' /* Adicionar série */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'CARD_ACOES_COPY_COPY_COPY_REPLICAR_SRIES');
                                      if (columnSeriesRepeticoesRecord
                                                  ?.intervalo !=
                                              null &&
                                          columnSeriesRepeticoesRecord
                                                  ?.intervalo !=
                                              '') {
                                        await columnSeriesRepeticoesRecord!
                                            .reference
                                            .update(
                                                createSeriesRepeticoesRecordData(
                                          seriesRep:
                                              _model.ageTextController1.text,
                                          carga: _model.ageTextController3.text,
                                          intervalo:
                                              _model.ageTextController2.text,
                                          treino: widget.treinosNoLIst,
                                          uidTreinos: widget.seriesRep?.id,
                                        ));
                                      } else if (columnSeriesRepeticoesRecord
                                                  ?.seriesRep !=
                                              null &&
                                          columnSeriesRepeticoesRecord
                                                  ?.seriesRep !=
                                              '') {
                                        await columnSeriesRepeticoesRecord!
                                            .reference
                                            .update(
                                                createSeriesRepeticoesRecordData(
                                          seriesRep:
                                              _model.ageTextController1.text,
                                          carga: _model.ageTextController3.text,
                                          intervalo:
                                              _model.ageTextController2.text,
                                          uidTreinos: widget.seriesRep?.id,
                                        ));
                                      } else if (columnSeriesRepeticoesRecord
                                                  ?.carga !=
                                              null &&
                                          columnSeriesRepeticoesRecord?.carga !=
                                              '') {
                                        await columnSeriesRepeticoesRecord!
                                            .reference
                                            .update(
                                                createSeriesRepeticoesRecordData(
                                          seriesRep:
                                              _model.ageTextController1.text,
                                          carga: _model.ageTextController3.text,
                                          intervalo:
                                              _model.ageTextController2.text,
                                          uidTreinos: widget.seriesRep?.id,
                                        ));
                                      } else {
                                        await SeriesRepeticoesRecord.createDoc(
                                                widget.cliente!)
                                            .set(
                                                createSeriesRepeticoesRecordData(
                                          seriesRep:
                                              _model.ageTextController1.text,
                                          carga: _model.ageTextController3.text,
                                          intervalo:
                                              _model.ageTextController2.text,
                                          treino: widget.treinosNoLIst,
                                          uidTreinos: widget.seriesRep?.id,
                                        ));
                                      }

                                      context.pop();
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'i6543zs3' /* Replicar séries */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'CARD_ACOES_COPY_COPY_COPY_ADICIONAR_BTN_');
                                  if (columnSeriesRepeticoesRecord?.intervalo !=
                                          null &&
                                      columnSeriesRepeticoesRecord?.intervalo !=
                                          '') {
                                    await columnSeriesRepeticoesRecord!
                                        .reference
                                        .update(
                                            createSeriesRepeticoesRecordData(
                                      seriesRep: _model.ageTextController1.text,
                                      carga: _model.ageTextController3.text,
                                      intervalo: _model.ageTextController2.text,
                                      treino: widget.treinosNoLIst,
                                      uidTreinos: widget.seriesRep?.id,
                                    ));
                                  } else if (columnSeriesRepeticoesRecord
                                              ?.seriesRep !=
                                          null &&
                                      columnSeriesRepeticoesRecord?.seriesRep !=
                                          '') {
                                    await columnSeriesRepeticoesRecord!
                                        .reference
                                        .update(
                                            createSeriesRepeticoesRecordData(
                                      seriesRep: _model.ageTextController1.text,
                                      carga: _model.ageTextController3.text,
                                      intervalo: _model.ageTextController2.text,
                                      uidTreinos: widget.seriesRep?.id,
                                    ));
                                  } else if (columnSeriesRepeticoesRecord
                                              ?.carga !=
                                          null &&
                                      columnSeriesRepeticoesRecord?.carga !=
                                          '') {
                                    await columnSeriesRepeticoesRecord!
                                        .reference
                                        .update(
                                            createSeriesRepeticoesRecordData(
                                      seriesRep: _model.ageTextController1.text,
                                      carga: _model.ageTextController3.text,
                                      intervalo: _model.ageTextController2.text,
                                      uidTreinos: widget.seriesRep?.id,
                                    ));
                                  } else {
                                    await SeriesRepeticoesRecord.createDoc(
                                            widget.cliente!)
                                        .set(createSeriesRepeticoesRecordData(
                                      seriesRep: _model.ageTextController1.text,
                                      carga: _model.ageTextController3.text,
                                      intervalo: _model.ageTextController2.text,
                                      treino: widget.treinosNoLIst,
                                      uidTreinos: widget.seriesRep?.id,
                                    ));
                                  }

                                  context.pop();
                                },
                                text: FFLocalizations.of(context).getText(
                                  '49s9ux3k' /* Adicionar */,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
