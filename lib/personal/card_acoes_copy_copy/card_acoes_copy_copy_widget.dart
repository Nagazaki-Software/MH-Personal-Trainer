import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'card_acoes_copy_copy_model.dart';
export 'card_acoes_copy_copy_model.dart';

class CardAcoesCopyCopyWidget extends StatefulWidget {
  const CardAcoesCopyCopyWidget({
    super.key,
    required this.cliente,
    required this.seriesRep,
    required this.treinosNoLIst,
  });

  final DocumentReference? cliente;
  final DocumentReference? seriesRep;
  final String? treinosNoLIst;

  @override
  State<CardAcoesCopyCopyWidget> createState() =>
      _CardAcoesCopyCopyWidgetState();
}

class _CardAcoesCopyCopyWidgetState extends State<CardAcoesCopyCopyWidget> {
  late CardAcoesCopyCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardAcoesCopyCopyModel());

    _model.ageTextController1 ??= TextEditingController();
    _model.ageFocusNode1 ??= FocusNode();
    _model.ageFocusNode1!.addListener(() => safeSetState(() {}));
    _model.ageTextController2 ??= TextEditingController();
    _model.ageFocusNode2 ??= FocusNode();
    _model.ageFocusNode2!.addListener(() => safeSetState(() {}));
    _model.ageTextController3 ??= TextEditingController();
    _model.ageFocusNode3 ??= FocusNode();
    _model.ageFocusNode3!.addListener(() => safeSetState(() {}));
    _model.ageTextController4 ??= TextEditingController();
    _model.ageFocusNode4 ??= FocusNode();
    _model.ageFocusNode4!.addListener(() => safeSetState(() {}));
    _model.ageTextController5 ??= TextEditingController();
    _model.ageFocusNode5 ??= FocusNode();
    _model.ageFocusNode5!.addListener(() => safeSetState(() {}));
    _model.ageTextController6 ??= TextEditingController();
    _model.ageFocusNode6 ??= FocusNode();
    _model.ageFocusNode6!.addListener(() => safeSetState(() {}));
    _model.ageTextController7 ??= TextEditingController();
    _model.ageFocusNode7 ??= FocusNode();
    _model.ageFocusNode7!.addListener(() => safeSetState(() {}));
    _model.ageTextController8 ??= TextEditingController();
    _model.ageFocusNode8 ??= FocusNode();
    _model.ageFocusNode8!.addListener(() => safeSetState(() {}));
    _model.ageTextController9 ??= TextEditingController();
    _model.ageFocusNode9 ??= FocusNode();
    _model.ageFocusNode9!.addListener(() => safeSetState(() {}));
    _model.ageTextController10 ??= TextEditingController();
    _model.ageFocusNode10 ??= FocusNode();
    _model.ageFocusNode10!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: StreamBuilder<UsersRecord>(
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
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(22.0),
                          topRight: Radius.circular(22.0),
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              List<SeriesRepeticoesRecord>
                                  columnSeriesRepeticoesRecordList =
                                  snapshot.data!;
                              final columnSeriesRepeticoesRecord =
                                  columnSeriesRepeticoesRecordList.isNotEmpty
                                      ? columnSeriesRepeticoesRecordList.first
                                      : null;

                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 20.0, 10.0, 20.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '17v9upol' /* Adicione séries e repetições p... */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                  if (_model.seriesRepOn)
                                    TextFormField(
                                      controller: _model.ageTextController1,
                                      focusNode: _model.ageFocusNode1,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '9gj04cot' /* Séries/Reps: */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
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
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 20.0, 16.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Figtree',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .ageTextController1Validator
                                          .asValidator(context),
                                    ),
                                  if (_model.intervaloOn)
                                    TextFormField(
                                      controller: _model.ageTextController2,
                                      focusNode: _model.ageFocusNode2,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '1oyqabe1' /* Intervalo(s): */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
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
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 20.0, 16.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Figtree',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .ageTextController2Validator
                                          .asValidator(context),
                                    ),
                                  if (_model.cargaOn)
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        TextFormField(
                                          controller: _model.ageTextController3,
                                          focusNode: _model.ageFocusNode3,
                                          autofocus: true,
                                          textCapitalization:
                                              TextCapitalization.none,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'ylfqkrma' /* Carga: */,
                                            ),
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            hintStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Figtree',
                                                      color: Color(0xFFFF5963),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF6F61EF),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 20.0, 16.0, 20.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Figtree',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                          keyboardType: TextInputType.number,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .ageTextController3Validator
                                              .asValidator(context),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6.0, 2.0, 6.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'p3azvtcq' /* Para que a evolução de carga f... */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  if (_model.tempoOn)
                                    TextFormField(
                                      controller: _model.ageTextController4,
                                      focusNode: _model.ageFocusNode4,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '6o5j0hei' /* Tempo: */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
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
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 20.0, 16.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Figtree',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .ageTextController4Validator
                                          .asValidator(context),
                                    ),
                                  if (_model.inclinacao)
                                    TextFormField(
                                      controller: _model.ageTextController5,
                                      focusNode: _model.ageFocusNode5,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'doafhu1g' /* Inclinação: */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
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
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 20.0, 16.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Figtree',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .ageTextController5Validator
                                          .asValidator(context),
                                    ),
                                  if (_model.cadenciaOn)
                                    TextFormField(
                                      controller: _model.ageTextController6,
                                      focusNode: _model.ageFocusNode6,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'kmja05bb' /* Cadência: */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
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
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 20.0, 16.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Figtree',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .ageTextController6Validator
                                          .asValidator(context),
                                    ),
                                  if (_model.obsOn)
                                    TextFormField(
                                      controller: _model.ageTextController7,
                                      focusNode: _model.ageFocusNode7,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'mwit3t41' /* Observações: */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
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
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6F61EF),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF5963),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 20.0, 16.0, 20.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Figtree',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .ageTextController7Validator
                                          .asValidator(context),
                                    ),
                                  if (_model.velocidadeOn)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 4.0),
                                      child: TextFormField(
                                        controller: _model.ageTextController8,
                                        focusNode: _model.ageFocusNode8,
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.words,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'ss11keat' /* Velocidade: */,
                                          ),
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          errorStyle:
                                              FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF6F61EF),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 20.0, 16.0, 20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Figtree',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .ageTextController8Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  if (_model.distanciaOn)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 4.0),
                                      child: TextFormField(
                                        controller: _model.ageTextController9,
                                        focusNode: _model.ageFocusNode9,
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.words,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'xyzgfely' /* Distância: */,
                                          ),
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          errorStyle:
                                              FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF6F61EF),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 20.0, 16.0, 20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Figtree',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .ageTextController9Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  if (_model.paceOn)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 4.0),
                                      child: TextFormField(
                                        controller: _model.ageTextController10,
                                        focusNode: _model.ageFocusNode10,
                                        autofocus: true,
                                        textCapitalization:
                                            TextCapitalization.words,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'ihiovkyk' /* Pace: */,
                                          ),
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          errorStyle:
                                              FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF6F61EF),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 20.0, 16.0, 20.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Figtree',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        validator: _model
                                            .ageTextController10Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController ??=
                                            FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'wsbisjwa' /* Repetições e carga */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'co95odjq' /* Repetições, carga e tempo */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '4bub7d24' /* Repetições e tempo */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '02snygjz' /* Tempo e inclinação */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'x77v3271' /* Corrida */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'cyaop3lv' /* Observações */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'lpjvjt9q' /* Cadência */,
                                      )
                                    ],
                                    onChanged: (val) async {
                                      safeSetState(
                                          () => _model.dropDownValue = val);
                                      logFirebaseEvent(
                                          'CARD_ACOES_COPY_COPY_DropDown_dtiuglks_O');
                                      if (_model.dropDownValue ==
                                          'Repetições e carga') {
                                        _model.seriesRepOn = true;
                                        _model.cargaOn = true;
                                        _model.intervaloOn = true;
                                        _model.paceOn = false;
                                        _model.tempoOn = false;
                                        _model.cadenciaOn = false;
                                        _model.obsOn = false;
                                        _model.velocidadeOn = false;
                                        _model.distanciaOn = false;
                                        _model.inclinacao = false;
                                        safeSetState(() {});
                                      } else if (_model.dropDownValue ==
                                          'Repetições, carga e tempo') {
                                        _model.seriesRepOn = true;
                                        _model.cargaOn = true;
                                        _model.intervaloOn = true;
                                        _model.tempoOn = true;
                                        _model.paceOn = false;
                                        _model.cadenciaOn = false;
                                        _model.obsOn = false;
                                        _model.velocidadeOn = false;
                                        _model.distanciaOn = false;
                                        _model.inclinacao = false;
                                        safeSetState(() {});
                                      } else if (_model.dropDownValue ==
                                          'Repetições e tempo') {
                                        _model.seriesRepOn = true;
                                        _model.cargaOn = false;
                                        _model.intervaloOn = true;
                                        _model.tempoOn = true;
                                        _model.paceOn = false;
                                        _model.cadenciaOn = false;
                                        _model.obsOn = false;
                                        _model.velocidadeOn = false;
                                        _model.distanciaOn = false;
                                        _model.inclinacao = false;
                                        safeSetState(() {});
                                      } else if (_model.dropDownValue ==
                                          'Tempo e inclinação') {
                                        _model.seriesRepOn = false;
                                        _model.cargaOn = false;
                                        _model.intervaloOn = true;
                                        _model.tempoOn = true;
                                        _model.paceOn = false;
                                        _model.cadenciaOn = false;
                                        _model.obsOn = false;
                                        _model.velocidadeOn = false;
                                        _model.distanciaOn = false;
                                        _model.inclinacao = true;
                                        safeSetState(() {});
                                      } else if (_model.dropDownValue ==
                                          'Corrida') {
                                        _model.seriesRepOn = false;
                                        _model.cargaOn = false;
                                        _model.intervaloOn = true;
                                        _model.tempoOn = true;
                                        _model.paceOn = true;
                                        _model.cadenciaOn = false;
                                        _model.obsOn = false;
                                        _model.velocidadeOn = true;
                                        _model.distanciaOn = true;
                                        _model.inclinacao = true;
                                        safeSetState(() {});
                                      } else if (_model.dropDownValue ==
                                          'Observações') {
                                        _model.seriesRepOn = false;
                                        _model.cargaOn = false;
                                        _model.intervaloOn = false;
                                        _model.tempoOn = true;
                                        _model.paceOn = false;
                                        _model.cadenciaOn = false;
                                        _model.obsOn = true;
                                        _model.velocidadeOn = false;
                                        _model.distanciaOn = false;
                                        _model.inclinacao = false;
                                        safeSetState(() {});
                                      } else if (_model.dropDownValue ==
                                          'Cadência') {
                                        _model.seriesRepOn = false;
                                        _model.cargaOn = false;
                                        _model.intervaloOn = false;
                                        _model.tempoOn = true;
                                        _model.paceOn = false;
                                        _model.cadenciaOn = true;
                                        _model.obsOn = false;
                                        _model.velocidadeOn = false;
                                        _model.distanciaOn = false;
                                        _model.inclinacao = false;
                                        safeSetState(() {});
                                      }
                                    },
                                    width: double.infinity,
                                    height: 56.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'fo7ezv2x' /* Selecione */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'CARD_ACOES_COPY_COPY_ADICIONAR_BTN_ON_TA');

                                        var seriesRepeticoesRecordReference =
                                            SeriesRepeticoesRecord.createDoc(
                                                widget.cliente!);
                                        await seriesRepeticoesRecordReference
                                            .set({
                                          ...createSeriesRepeticoesRecordData(
                                            uidTreinos: widget.seriesRep?.id,
                                            seriesRep:
                                                _model.ageTextController1.text,
                                            carga:
                                                _model.ageTextController3.text,
                                            intervalo:
                                                _model.ageTextController5.text,
                                            velocidade:
                                                _model.ageTextController8.text,
                                            pace:
                                                _model.ageTextController10.text,
                                            distancia:
                                                _model.ageTextController9.text,
                                            tempo:
                                                _model.ageTextController4.text,
                                            inclinacao:
                                                _model.ageTextController5.text,
                                            cadencia:
                                                _model.ageTextController6.text,
                                            obs: _model.ageTextController7.text,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'seriesData': [
                                                getSeriesRepFirestoreData(
                                                  updateSeriesRepStruct(
                                                    SeriesRepStruct(
                                                      carga: int.tryParse(_model
                                                          .ageTextController3
                                                          .text),
                                                      series: _model
                                                          .ageTextController1
                                                          .text,
                                                      intervalo: _model
                                                          .ageTextController2
                                                          .text,
                                                      tempo: _model
                                                          .ageTextController4
                                                          .text,
                                                      paces: _model
                                                          .ageTextController10
                                                          .text,
                                                      distancia: _model
                                                          .ageTextController9
                                                          .text,
                                                      inclinacaoes: _model
                                                          .ageTextController5
                                                          .text,
                                                      cadencia: _model
                                                          .ageTextController6
                                                          .text,
                                                      observacoes: _model
                                                          .ageTextController7
                                                          .text,
                                                      repeticoes: '',
                                                      protocolo:
                                                          _model.dropDownValue,
                                                      velocidade: _model
                                                          .ageTextController8
                                                          .text,
                                                    ),
                                                    clearUnsetFields: false,
                                                    create: true,
                                                  ),
                                                  true,
                                                )
                                              ],
                                              'treinos': [
                                                widget.treinosNoLIst
                                              ],
                                            },
                                          ),
                                        });
                                        _model.seriesReps =
                                            SeriesRepeticoesRecord
                                                .getDocumentFromData({
                                          ...createSeriesRepeticoesRecordData(
                                            uidTreinos: widget.seriesRep?.id,
                                            seriesRep:
                                                _model.ageTextController1.text,
                                            carga:
                                                _model.ageTextController3.text,
                                            intervalo:
                                                _model.ageTextController5.text,
                                            velocidade:
                                                _model.ageTextController8.text,
                                            pace:
                                                _model.ageTextController10.text,
                                            distancia:
                                                _model.ageTextController9.text,
                                            tempo:
                                                _model.ageTextController4.text,
                                            inclinacao:
                                                _model.ageTextController5.text,
                                            cadencia:
                                                _model.ageTextController6.text,
                                            obs: _model.ageTextController7.text,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'seriesData': [
                                                getSeriesRepFirestoreData(
                                                  updateSeriesRepStruct(
                                                    SeriesRepStruct(
                                                      carga: int.tryParse(_model
                                                          .ageTextController3
                                                          .text),
                                                      series: _model
                                                          .ageTextController1
                                                          .text,
                                                      intervalo: _model
                                                          .ageTextController2
                                                          .text,
                                                      tempo: _model
                                                          .ageTextController4
                                                          .text,
                                                      paces: _model
                                                          .ageTextController10
                                                          .text,
                                                      distancia: _model
                                                          .ageTextController9
                                                          .text,
                                                      inclinacaoes: _model
                                                          .ageTextController5
                                                          .text,
                                                      cadencia: _model
                                                          .ageTextController6
                                                          .text,
                                                      observacoes: _model
                                                          .ageTextController7
                                                          .text,
                                                      repeticoes: '',
                                                      protocolo:
                                                          _model.dropDownValue,
                                                      velocidade: _model
                                                          .ageTextController8
                                                          .text,
                                                    ),
                                                    clearUnsetFields: false,
                                                    create: true,
                                                  ),
                                                  true,
                                                )
                                              ],
                                              'treinos': [
                                                widget.treinosNoLIst
                                              ],
                                            },
                                          ),
                                        }, seriesRepeticoesRecordReference);

                                        await widget.seriesRep!.update({
                                          ...mapToFirestore(
                                            {
                                              'verifiqueSeriesRep':
                                                  FieldValue.arrayUnion([
                                                getVerifiqueTreinosFirestoreData(
                                                  updateVerifiqueTreinosStruct(
                                                    VerifiqueTreinosStruct(
                                                      treino:
                                                          widget.treinosNoLIst,
                                                      referenceSeriesRep: _model
                                                          .seriesReps
                                                          ?.reference,
                                                      treinos:
                                                          containerCreateTreinosRecord
                                                              .treino,
                                                      uidCreateTreinos:
                                                          containerCreateTreinosRecord
                                                              .reference.id,
                                                    ),
                                                    clearUnsetFields: false,
                                                  ),
                                                  true,
                                                )
                                              ]),
                                            },
                                          ),
                                        });
                                        triggerPushNotification(
                                          notificationTitle:
                                              'Seu personal adicionou séries em seu treino',
                                          notificationText:
                                              'Seu personal adicionou ${_model.dropDownValue} as séries e repetições.',
                                          notificationSound: 'default',
                                          userRefs: [widget.cliente!],
                                          initialPageName: 'iniciarTreinoAluno',
                                          parameterData: {
                                            'createTreinos': widget.seriesRep,
                                          },
                                        );

                                        await NotificacaoRecord.collection
                                            .doc()
                                            .set(createNotificacaoRecordData(
                                              tipo: 'Treinos',
                                              titulo:
                                                  'Seu personal adicionou séries em seu treino',
                                              descricao:
                                                  'Seu personal adicionou ${_model.dropDownValue} as séries e repetições.',
                                              data: getCurrentTimestamp,
                                              para: widget.cliente?.id,
                                              treino: widget.seriesRep,
                                            ));

                                        context.pushNamed(
                                          PainelAdministrativoDoPersonalWidget
                                              .routeName,
                                          queryParameters: {
                                            'cliente': serializeParam(
                                              widget.cliente,
                                              ParamType.DocumentReference,
                                            ),
                                            'createTreinos': serializeParam(
                                              widget.seriesRep,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 350),
                                            ),
                                          },
                                        );

                                        safeSetState(() {});
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        's2ad7y4f' /* Adicionar */,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      showLoadingIndicator: false,
                                    ),
                                  ),
                                ].divide(SizedBox(height: 1.0)),
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
