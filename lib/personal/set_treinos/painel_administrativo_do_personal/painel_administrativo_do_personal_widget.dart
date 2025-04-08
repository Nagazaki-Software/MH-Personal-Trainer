import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/components/headerweb_widget.dart';
import '/components/profile_personal_copy_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/personal/card_acoes_copy2/card_acoes_copy2_widget.dart';
import '/personal/card_acoes_copy2_copy/card_acoes_copy2_copy_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'painel_administrativo_do_personal_model.dart';
export 'painel_administrativo_do_personal_model.dart';

class PainelAdministrativoDoPersonalWidget extends StatefulWidget {
  const PainelAdministrativoDoPersonalWidget({
    super.key,
    required this.cliente,
    required this.createTreinos,
  });

  final DocumentReference? cliente;
  final DocumentReference? createTreinos;

  static String routeName = 'PainelAdministrativoDoPersonal';
  static String routePath = 'painelAdministrativoDoPersonal';

  @override
  State<PainelAdministrativoDoPersonalWidget> createState() =>
      _PainelAdministrativoDoPersonalWidgetState();
}

class _PainelAdministrativoDoPersonalWidgetState
    extends State<PainelAdministrativoDoPersonalWidget>
    with TickerProviderStateMixin {
  late PainelAdministrativoDoPersonalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PainelAdministrativoDoPersonalModel());

    _model.fullNameTextController1 ??= TextEditingController();
    _model.fullNameFocusNode1 ??= FocusNode();

    _model.fullNameTextController2 ??= TextEditingController();
    _model.fullNameFocusNode2 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(widget.cliente!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitSquareCircle(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }

        final painelAdministrativoDoPersonalUsersRecord = snapshot.data!;

        return Title(
            title: 'PainelAdministrativoDoPersonal',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                appBar: responsiveVisibility(
                  context: context,
                  desktop: false,
                )
                    ? AppBar(
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        automaticallyImplyLeading: false,
                        leading: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'PAINEL_ADMINISTRATIVO_DO_PERSONAL_arrow_');

                            context.pushNamed(
                              TreinosForClienteCopyWidget.routeName,
                              queryParameters: {
                                'cliente': serializeParam(
                                  widget.cliente,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 350),
                                ),
                              },
                            );
                          },
                        ),
                        actions: [],
                        centerTitle: false,
                        elevation: 0.0,
                      )
                    : null,
                body: SafeArea(
                  top: true,
                  child: StreamBuilder<CreateTreinosRecord>(
                    stream:
                        CreateTreinosRecord.getDocument(widget.createTreinos!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: SpinKitRotatingPlain(
                              color: FlutterFlowTheme.of(context).primary,
                              size: 40.0,
                            ),
                          ),
                        );
                      }

                      final columnCreateTreinosRecord = snapshot.data!;

                      return RefreshIndicator(
                        onRefresh: () async {},
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                desktop: false,
                              ))
                                StreamBuilder<List<TreinorsRecord>>(
                                  stream: queryTreinorsRecord(
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<TreinorsRecord>
                                        columnTreinorsRecordList =
                                        snapshot.data!;
                                    final columnTreinorsRecord =
                                        columnTreinorsRecordList.isNotEmpty
                                            ? columnTreinorsRecordList.first
                                            : null;

                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 5.0,
                                                  color: Color(0x230F1113),
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 16.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      width: 80.0,
                                                      height: 80.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFE0E3E7),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(2.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      60.0),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              painelAdministrativoDoPersonalUsersRecord
                                                                  .photoUrl,
                                                              'https://wallpapers.com/images/hd/default-user-profile-icon-lemo857tj1b3io21.png',
                                                            ),
                                                            width: 60.0,
                                                            height: 60.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            painelAdministrativoDoPersonalUsersRecord
                                                                .displayName,
                                                            maxLines: 2,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Text(
                                                            painelAdministrativoDoPersonalUsersRecord
                                                                .phoneNumber,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: Color(
                                                                      0xFF4B39EF),
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Aluno desde: ${dateTimeFormat(
                                                                    "d/M/y",
                                                                    painelAdministrativoDoPersonalUsersRecord
                                                                        .alunoDesde,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: Color(
                                                                            0xFF57636C),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          if (painelAdministrativoDoPersonalUsersRecord
                                                                      .tipoDeGerenciamento !=
                                                                  '')
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            5.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 220.0,
                                                                  height: 100.0,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxHeight:
                                                                        32.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x32171717),
                                                                        offset:
                                                                            Offset(
                                                                          0.0,
                                                                          2.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                12.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              painelAdministrativoDoPersonalUsersRecord.tipoDeGerenciamento,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: Colors.white,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Icon(
                                                                          Icons
                                                                              .radio_button_checked_outlined,
                                                                          color:
                                                                              Colors.white,
                                                                          size:
                                                                              12.0,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 0.0, 5.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd88n9tqa' /* Treinos */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'PAINEL_ADMINISTRATIVO_DO_PERSONAL_Row_w8');
                                                FFAppState()
                                                    .updateDocumentStructStruct(
                                                  (e) => e
                                                    ..rotinaDeTreino =
                                                        columnCreateTreinosRecord
                                                            .nomeDoTreino
                                                    ..treinos =
                                                        columnCreateTreinosRecord
                                                            .treino
                                                            .toList()
                                                    ..date =
                                                        columnCreateTreinosRecord
                                                            .comecaEmDaRotina,
                                                );
                                                safeSetState(() {});
                                                _model.outputDocumentCopy =
                                                    await actions
                                                        .generateDocument(
                                                  'CLQ4I5I-ZRREMOI-WSMZ5IA-TSGZ6WQ',
                                                  'o5NbL5HMR2LFq5d6dQDD',
                                                  'pdf',
                                                  FFAppState()
                                                      .documentStruct
                                                      .toMap(),
                                                );
                                                FFAppState().downloadUrl =
                                                    _model.outputDocumentCopy!;
                                                safeSetState(() {});

                                                safeSetState(() {});
                                              },
                                              child: SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'PAINEL_ADMINISTRATIVO_DO_PERSONAL_BAIXAR');
                                                        _model.apiResultv20 =
                                                            await PdfMonkeyCall
                                                                .call(
                                                          title:
                                                              columnCreateTreinosRecord
                                                                  .nomeDoTreino,
                                                          treinosList:
                                                              columnCreateTreinosRecord
                                                                  .treino,
                                                          documentTemplateId:
                                                              '2EBAA80D-80A5-43FB-AB69-A3A8A5D02DA8',
                                                        );

                                                        if ((_model.apiResultv20
                                                                ?.succeeded ??
                                                            true)) {
                                                          await launchURL(
                                                              PdfMonkeyCall.url(
                                                            (_model.apiResultv20
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!);
                                                        }

                                                        safeSetState(() {});
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'yovgqtqe' /* Baixar treino */,
                                                      ),
                                                      icon: Icon(
                                                        Icons.file_open,
                                                        size: 15.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'PAINEL_ADMINISTRATIVO_DO_PERSONAL_VISO_D');

                                                          context.pushNamed(
                                                            VerTreinosWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'user':
                                                                  serializeParam(
                                                                widget.cliente,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'createtreinos':
                                                                  serializeParam(
                                                                columnCreateTreinosRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'carga':
                                                                  serializeParam(
                                                                '',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        350),
                                                              ),
                                                            },
                                                          );
                                                        },
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '8d1c97cx' /* Visão do aluno */,
                                                        ),
                                                        icon: Icon(
                                                          Icons.remove_red_eye,
                                                          size: 15.0,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'PAINEL_ADMINISTRATIVO_DO_PERSONAL_EVOLUO');

                                                        context.pushNamed(
                                                          EvolucaodecargasWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'createTreinos':
                                                                serializeParam(
                                                              widget
                                                                  .createTreinos,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                            'users':
                                                                serializeParam(
                                                              widget.cliente,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      350),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'f3zr4i8w' /* Evolução de cargas */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .analytics_outlined,
                                                        size: 15.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (columnCreateTreinosRecord
                                              .treino.isNotEmpty)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 12.0, 16.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final tre =
                                                      columnCreateTreinosRecord
                                                          .treino
                                                          .map((e) => e)
                                                          .toList();

                                                  return ReorderableListView
                                                      .builder(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    proxyDecorator: (Widget
                                                                child,
                                                            int index,
                                                            Animation<double>
                                                                animation) =>
                                                        Material(
                                                            color: Colors
                                                                .transparent,
                                                            child: child),
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: tre.length,
                                                    itemBuilder:
                                                        (context, treIndex) {
                                                      final treItem =
                                                          tre[treIndex];
                                                      return Container(
                                                        key: ValueKey(
                                                            "ListView_zerw3lh9" +
                                                                '_' +
                                                                treIndex
                                                                    .toString()),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            constraints:
                                                                BoxConstraints(
                                                              minHeight: 80.0,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(2.0),
                                                              child:
                                                                  SingleChildScrollView(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          12.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                logFirebaseEvent('PAINEL_ADMINISTRATIVO_DO_PERSONAL_Contai');

                                                                                await columnCreateTreinosRecord.reference.update({
                                                                                  ...mapToFirestore(
                                                                                    {
                                                                                      'treino': FieldValue.arrayRemove([
                                                                                        treItem
                                                                                      ]),
                                                                                    },
                                                                                  ),
                                                                                });
                                                                              },
                                                                              child: Container(
                                                                                width: 20.0,
                                                                                height: 20.0,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, -1.0),
                                                                                      child: Icon(
                                                                                        Icons.close_rounded,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 16.0,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 10.0),
                                                                              child: StreamBuilder<List<SeriesRepeticoesRecord>>(
                                                                                stream: querySeriesRepeticoesRecord(
                                                                                  parent: widget.cliente,
                                                                                  queryBuilder: (seriesRepeticoesRecord) => seriesRepeticoesRecord
                                                                                      .where(
                                                                                        'treinos',
                                                                                        arrayContains: treItem,
                                                                                      )
                                                                                      .where(
                                                                                        'uidTreinos',
                                                                                        isEqualTo: widget.createTreinos?.id,
                                                                                      ),
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
                                                                                  List<SeriesRepeticoesRecord> columnSeriesRepeticoesRecordList = snapshot.data!;
                                                                                  final columnSeriesRepeticoesRecord = columnSeriesRepeticoesRecordList.isNotEmpty ? columnSeriesRepeticoesRecordList.first : null;

                                                                                  return InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      logFirebaseEvent('PAINEL_ADMINISTRATIVO_DO_PERSONAL_Column');
                                                                                      if (columnSeriesRepeticoesRecord != null) {
                                                                                        await showModalBottomSheet(
                                                                                          isScrollControlled: true,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          enableDrag: false,
                                                                                          context: context,
                                                                                          builder: (context) {
                                                                                            return GestureDetector(
                                                                                              onTap: () {
                                                                                                FocusScope.of(context).unfocus();
                                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                                              },
                                                                                              child: Padding(
                                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                                child: CardAcoesCopy2Widget(
                                                                                                  cliente: widget.cliente!,
                                                                                                  listTRE: columnCreateTreinosRecord.treino,
                                                                                                  treItem: treItem,
                                                                                                  createTreinos: widget.createTreinos,
                                                                                                  seriesRep: columnSeriesRepeticoesRecord.reference,
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => safeSetState(() {}));
                                                                                      } else {
                                                                                        await showModalBottomSheet(
                                                                                          isScrollControlled: true,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          enableDrag: false,
                                                                                          context: context,
                                                                                          builder: (context) {
                                                                                            return GestureDetector(
                                                                                              onTap: () {
                                                                                                FocusScope.of(context).unfocus();
                                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                                              },
                                                                                              child: Padding(
                                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                                child: CardAcoesCopy2CopyWidget(
                                                                                                  cliente: widget.cliente!,
                                                                                                  listTRE: columnCreateTreinosRecord.treino,
                                                                                                  treItem: treItem,
                                                                                                  createTreinos: widget.createTreinos,
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => safeSetState(() {}));
                                                                                      }
                                                                                    },
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                            child: AutoSizeText(
                                                                                              treItem,
                                                                                              maxLines: 2,
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        if (!(columnSeriesRepeticoesRecord != null))
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '06bd3m4y' /* Adicione ou edite séries para ... */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        if (columnSeriesRepeticoesRecord?.seriesData != null && (columnSeriesRepeticoesRecord?.seriesData)!.isNotEmpty)
                                                                                          Container(
                                                                                            child: StreamBuilder<List<SeriesRepeticoesRecord>>(
                                                                                              stream: querySeriesRepeticoesRecord(
                                                                                                parent: widget.cliente,
                                                                                                queryBuilder: (seriesRepeticoesRecord) => seriesRepeticoesRecord
                                                                                                    .where(
                                                                                                      'treinos',
                                                                                                      arrayContains: treItem,
                                                                                                    )
                                                                                                    .where(
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
                                                                                                      child: SpinKitSquareCircle(
                                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                                        size: 50.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                }
                                                                                                List<SeriesRepeticoesRecord> listViewSeriesRepeticoesRecordList = snapshot.data!;

                                                                                                return ReorderableListView.builder(
                                                                                                  padding: EdgeInsets.zero,
                                                                                                  primary: false,
                                                                                                  proxyDecorator: (Widget child, int index, Animation<double> animation) => Material(color: Colors.transparent, child: child),
                                                                                                  shrinkWrap: true,
                                                                                                  scrollDirection: Axis.vertical,
                                                                                                  itemCount: listViewSeriesRepeticoesRecordList.length,
                                                                                                  itemBuilder: (context, listViewIndex) {
                                                                                                    final listViewSeriesRepeticoesRecord = listViewSeriesRepeticoesRecordList[listViewIndex];
                                                                                                    return Container(
                                                                                                      key: ValueKey("ListView_pd1m4ycw" + '_' + listViewIndex.toString()),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                                            child: Wrap(
                                                                                                              spacing: 8.0,
                                                                                                              runSpacing: 4.0,
                                                                                                              alignment: WrapAlignment.start,
                                                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                              direction: Axis.horizontal,
                                                                                                              runAlignment: WrapAlignment.start,
                                                                                                              verticalDirection: VerticalDirection.down,
                                                                                                              clipBehavior: Clip.none,
                                                                                                              children: [
                                                                                                                if (listViewSeriesRepeticoesRecord.seriesRep != '')
                                                                                                                  Container(
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsets.all(6.0),
                                                                                                                      child: Column(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                        children: [
                                                                                                                          RichText(
                                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                                            text: TextSpan(
                                                                                                                              children: [
                                                                                                                                TextSpan(
                                                                                                                                  text: FFLocalizations.of(context).getText(
                                                                                                                                    'yhbr4ge7' /* Series/Rep:  */,
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                        fontSize: 13.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                                TextSpan(
                                                                                                                                  text: valueOrDefault<String>(
                                                                                                                                    listViewSeriesRepeticoesRecord.seriesRep,
                                                                                                                                    '0',
                                                                                                                                  ),
                                                                                                                                  style: TextStyle(),
                                                                                                                                )
                                                                                                                              ],
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Readex Pro',
                                                                                                                                    fontSize: 13.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                if (listViewSeriesRepeticoesRecord.intervalo != '')
                                                                                                                  Container(
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsets.all(6.0),
                                                                                                                      child: Column(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                        children: [
                                                                                                                          RichText(
                                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                                            text: TextSpan(
                                                                                                                              children: [
                                                                                                                                TextSpan(
                                                                                                                                  text: FFLocalizations.of(context).getText(
                                                                                                                                    'ss1l5q2h' /* Intervalo:  */,
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                        fontSize: 13.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                                TextSpan(
                                                                                                                                  text: valueOrDefault<String>(
                                                                                                                                    listViewSeriesRepeticoesRecord.intervalo,
                                                                                                                                    '0',
                                                                                                                                  ),
                                                                                                                                  style: TextStyle(),
                                                                                                                                )
                                                                                                                              ],
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Readex Pro',
                                                                                                                                    fontSize: 13.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                if (listViewSeriesRepeticoesRecord.carga != '')
                                                                                                                  Container(
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsets.all(6.0),
                                                                                                                      child: Column(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                        children: [
                                                                                                                          RichText(
                                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                                            text: TextSpan(
                                                                                                                              children: [
                                                                                                                                TextSpan(
                                                                                                                                  text: FFLocalizations.of(context).getText(
                                                                                                                                    'sunt98eq' /* Carga:  */,
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                        fontSize: 13.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                                TextSpan(
                                                                                                                                  text: valueOrDefault<String>(
                                                                                                                                    listViewSeriesRepeticoesRecord.carga,
                                                                                                                                    '0',
                                                                                                                                  ),
                                                                                                                                  style: TextStyle(),
                                                                                                                                )
                                                                                                                              ],
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Readex Pro',
                                                                                                                                    fontSize: 13.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                if (listViewSeriesRepeticoesRecord.tempo != '')
                                                                                                                  Container(
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsets.all(6.0),
                                                                                                                      child: Column(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                        children: [
                                                                                                                          RichText(
                                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                                            text: TextSpan(
                                                                                                                              children: [
                                                                                                                                TextSpan(
                                                                                                                                  text: FFLocalizations.of(context).getText(
                                                                                                                                    '3q1posd7' /* Tempo:  */,
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                        fontSize: 13.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                                TextSpan(
                                                                                                                                  text: valueOrDefault<String>(
                                                                                                                                    listViewSeriesRepeticoesRecord.tempo,
                                                                                                                                    '0',
                                                                                                                                  ),
                                                                                                                                  style: TextStyle(),
                                                                                                                                )
                                                                                                                              ],
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Readex Pro',
                                                                                                                                    fontSize: 13.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                if (listViewSeriesRepeticoesRecord.velocidade != '')
                                                                                                                  Container(
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsets.all(6.0),
                                                                                                                      child: Column(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                        children: [
                                                                                                                          RichText(
                                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                                            text: TextSpan(
                                                                                                                              children: [
                                                                                                                                TextSpan(
                                                                                                                                  text: FFLocalizations.of(context).getText(
                                                                                                                                    'e8uq233s' /* Velocidade:  */,
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                        fontSize: 13.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                                TextSpan(
                                                                                                                                  text: valueOrDefault<String>(
                                                                                                                                    listViewSeriesRepeticoesRecord.velocidade,
                                                                                                                                    '0',
                                                                                                                                  ),
                                                                                                                                  style: TextStyle(),
                                                                                                                                )
                                                                                                                              ],
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Readex Pro',
                                                                                                                                    fontSize: 13.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                if (listViewSeriesRepeticoesRecord.inclinacao != '')
                                                                                                                  Container(
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsets.all(6.0),
                                                                                                                      child: Column(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                        children: [
                                                                                                                          RichText(
                                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                                            text: TextSpan(
                                                                                                                              children: [
                                                                                                                                TextSpan(
                                                                                                                                  text: FFLocalizations.of(context).getText(
                                                                                                                                    'lxdqbq8c' /* Inclinação:  */,
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                        fontSize: 13.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                                TextSpan(
                                                                                                                                  text: valueOrDefault<String>(
                                                                                                                                    listViewSeriesRepeticoesRecord.inclinacao,
                                                                                                                                    '0',
                                                                                                                                  ),
                                                                                                                                  style: TextStyle(),
                                                                                                                                )
                                                                                                                              ],
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Readex Pro',
                                                                                                                                    fontSize: 13.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                if (listViewSeriesRepeticoesRecord.distancia != '')
                                                                                                                  Container(
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsets.all(6.0),
                                                                                                                      child: Column(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                        children: [
                                                                                                                          RichText(
                                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                                            text: TextSpan(
                                                                                                                              children: [
                                                                                                                                TextSpan(
                                                                                                                                  text: FFLocalizations.of(context).getText(
                                                                                                                                    '0n3ct1y7' /* Distância:  */,
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                        fontSize: 13.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                                TextSpan(
                                                                                                                                  text: valueOrDefault<String>(
                                                                                                                                    listViewSeriesRepeticoesRecord.distancia,
                                                                                                                                    '0',
                                                                                                                                  ),
                                                                                                                                  style: TextStyle(),
                                                                                                                                )
                                                                                                                              ],
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Readex Pro',
                                                                                                                                    fontSize: 13.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                if (listViewSeriesRepeticoesRecord.pace != '')
                                                                                                                  Container(
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsets.all(6.0),
                                                                                                                      child: Column(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                        children: [
                                                                                                                          RichText(
                                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                                            text: TextSpan(
                                                                                                                              children: [
                                                                                                                                TextSpan(
                                                                                                                                  text: FFLocalizations.of(context).getText(
                                                                                                                                    '6hiv1jvn' /* Paces:  */,
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                        fontSize: 13.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                                TextSpan(
                                                                                                                                  text: valueOrDefault<String>(
                                                                                                                                    listViewSeriesRepeticoesRecord.pace,
                                                                                                                                    '0',
                                                                                                                                  ),
                                                                                                                                  style: TextStyle(),
                                                                                                                                )
                                                                                                                              ],
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Readex Pro',
                                                                                                                                    fontSize: 13.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                if (listViewSeriesRepeticoesRecord.obs != '')
                                                                                                                  Container(
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsets.all(6.0),
                                                                                                                      child: Column(
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                        children: [
                                                                                                                          RichText(
                                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                                            text: TextSpan(
                                                                                                                              children: [
                                                                                                                                TextSpan(
                                                                                                                                  text: FFLocalizations.of(context).getText(
                                                                                                                                    'ksdmsigt' /* Observações:  */,
                                                                                                                                  ),
                                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                        fontFamily: 'Readex Pro',
                                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                        fontSize: 13.0,
                                                                                                                                        letterSpacing: 0.0,
                                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                                TextSpan(
                                                                                                                                  text: listViewSeriesRepeticoesRecord.obs,
                                                                                                                                  style: TextStyle(),
                                                                                                                                )
                                                                                                                              ],
                                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                    fontFamily: 'Readex Pro',
                                                                                                                                    fontSize: 13.0,
                                                                                                                                    letterSpacing: 0.0,
                                                                                                                                  ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                        ].divide(SizedBox(height: 4.0)),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                  onReorder: (int reorderableOldIndex, int reorderableNewIndex) async {
                                                                                                    logFirebaseEvent('PAINEL_ADMINISTRATIVO_DO_PERSONAL_ListVi');
                                                                                                    await actions.reorderSeriesRep(
                                                                                                      columnCreateTreinosRecord.verifiqueSeriesRep.map((e) => e.treino).toList(),
                                                                                                      reorderableOldIndex,
                                                                                                      reorderableNewIndex,
                                                                                                    );

                                                                                                    safeSetState(() {});
                                                                                                  },
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                      ].divide(SizedBox(height: 4.0)),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    onReorder: (int
                                                            reorderableOldIndex,
                                                        int reorderableNewIndex) async {
                                                      logFirebaseEvent(
                                                          'PAINEL_ADMINISTRATIVO_DO_PERSONAL_ListVi');
                                                      _model.newlist =
                                                          await actions.reorder(
                                                        tre.toList(),
                                                        reorderableOldIndex,
                                                        reorderableNewIndex,
                                                      );

                                                      await widget
                                                          .createTreinos!
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'treino':
                                                                _model.newlist,
                                                          },
                                                        ),
                                                      });

                                                      safeSetState(() {});
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          if (!(columnCreateTreinosRecord
                                              .treino.isNotEmpty))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hr4xvgyd' /* Adicione um exercício a esse t... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'PAINEL_ADMINISTRATIVO_DO_PERSONAL_ADICIO');

                                                              context.pushNamed(
                                                                CreateRotinaDeTreinoCopyWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'users':
                                                                      serializeParam(
                                                                    widget
                                                                        .cliente,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                  'treino':
                                                                      serializeParam(
                                                                    widget
                                                                        .createTreinos,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                  'tre':
                                                                      serializeParam(
                                                                    columnCreateTreinosRecord
                                                                        .treino,
                                                                    ParamType
                                                                        .String,
                                                                    isList:
                                                                        true,
                                                                  ),
                                                                }.withoutNulls,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            350),
                                                                  ),
                                                                },
                                                              );
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'kru8kgmz' /* Adicionar treinos */,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'apddeizz' /* Crie seu próprio exercício par... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'PAINEL_ADMINISTRATIVO_DO_PERSONAL_ADICIO');

                                                              context.pushNamed(
                                                                CreateTreinoCopyWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'users':
                                                                      serializeParam(
                                                                    widget
                                                                        .cliente,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'q9jm3hbn' /* Adicionar treinos */,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          if (columnCreateTreinosRecord
                                              .treino.isNotEmpty)
                                            Container(
                                              width: double.infinity,
                                              height: 150.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zlp6h53r' /* Adicione um exercício a esse t... */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: StreamBuilder<
                                                        List<TreinorsRecord>>(
                                                      stream:
                                                          queryTreinorsRecord(
                                                        queryBuilder:
                                                            (treinorsRecord) =>
                                                                treinorsRecord
                                                                    .where(
                                                          'uidDoUsuario',
                                                          isEqualTo: null,
                                                        ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitSquareCircle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<TreinorsRecord>
                                                            dropDownTreinorsRecordList =
                                                            snapshot.data!;

                                                        return FlutterFlowDropDown<
                                                            String>(
                                                          controller: _model
                                                                  .dropDownValueController1 ??=
                                                              FormFieldController<
                                                                  String>(null),
                                                          options:
                                                              dropDownTreinorsRecordList
                                                                  .map((e) => e
                                                                      .treinosNoLIst)
                                                                  .toList(),
                                                          onChanged: (val) =>
                                                              safeSetState(() =>
                                                                  _model.dropDownValue1 =
                                                                      val),
                                                          width: 330.0,
                                                          height: 56.0,
                                                          searchHintTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          searchTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          searchHintText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'bjc28owd' /* Procure um exercício... */,
                                                          ),
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                          borderWidth: 2.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      4.0,
                                                                      16.0,
                                                                      4.0),
                                                          hidesUnderline: true,
                                                          isOverButton: true,
                                                          isSearchable: true,
                                                          isMultiSelect: false,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'PAINEL_ADMINISTRATIVO_DO_PERSONAL_ADICIO');

                                                            await widget
                                                                .createTreinos!
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'treino':
                                                                      FieldValue
                                                                          .arrayUnion([
                                                                    _model
                                                                        .dropDownValue1
                                                                  ]),
                                                                },
                                                              ),
                                                            });
                                                            triggerPushNotification(
                                                              notificationTitle:
                                                                  'Seu personal adicionou novos treinos!',
                                                              notificationText:
                                                                  'Entre para verificar seu treino.',
                                                              notificationSound:
                                                                  'default',
                                                              userRefs: [
                                                                widget.cliente!
                                                              ],
                                                              initialPageName:
                                                                  'iniciarTreinoAluno',
                                                              parameterData: {
                                                                'createTreinos':
                                                                    widget
                                                                        .createTreinos,
                                                              },
                                                            );

                                                            await NotificacaoRecord
                                                                .collection
                                                                .doc()
                                                                .set(
                                                                    createNotificacaoRecordData(
                                                                  titulo:
                                                                      'Seu personal adicionou novos treinos!',
                                                                  descricao:
                                                                      'Entre para verificar seu treino.',
                                                                  data:
                                                                      getCurrentTimestamp,
                                                                  para: widget
                                                                      .cliente
                                                                      ?.id,
                                                                  tipo:
                                                                      'Treinos',
                                                                  treino: widget
                                                                      .createTreinos,
                                                                ));
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'tmqzah3v' /* Adicionar */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'PAINEL_ADMINISTRATIVO_DO_PERSONAL_ADICIO');

                                                            context.pushNamed(
                                                              CreateTreinoCopyWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'users':
                                                                    serializeParam(
                                                                  widget
                                                                      .cliente,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                                'createTreinos':
                                                                    serializeParam(
                                                                  columnCreateTreinosRecord
                                                                      .reference,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          320),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'fb29017c' /* Adicionar seu treino */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          if (columnCreateTreinosRecord
                                              .treino.isNotEmpty)
                                            Container(
                                              width: double.infinity,
                                              height: 350.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              child: StreamBuilder<
                                                  List<PersonalAccountRecord>>(
                                                stream:
                                                    queryPersonalAccountRecord(
                                                  parent: currentUserReference,
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            SpinKitSquareCircle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<PersonalAccountRecord>
                                                      columnPersonalAccountRecordList =
                                                      snapshot.data!;
                                                  final columnPersonalAccountRecord =
                                                      columnPersonalAccountRecordList
                                                              .isNotEmpty
                                                          ? columnPersonalAccountRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'pndusyjd' /* Avalie esse treino */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child:
                                                            FlutterFlowDropDown<
                                                                String>(
                                                          controller: _model
                                                                  .dropDownValueController2 ??=
                                                              FormFieldController<
                                                                  String>(null),
                                                          options: [
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '8fj14898' /* Muito leve */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '6jtl03cn' /* Leve */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'm98sn0tp' /* Moderada */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'adms0bpr' /* Pouco intensa */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'he0hghiq' /* Intensa */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '9pnkg4f1' /* Muito intensa */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'jivmsgao' /* Muito, muito intensa */,
                                                            ),
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'r9rcdyxx' /* Exaustão máxima */,
                                                            )
                                                          ],
                                                          onChanged: (val) =>
                                                              safeSetState(() =>
                                                                  _model.dropDownValue2 =
                                                                      val),
                                                          width: 300.0,
                                                          height: 56.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'my6oeqcg' /* Como o aluno se sentiu? */,
                                                          ),
                                                          icon: Icon(
                                                            Icons
                                                                .keyboard_arrow_down_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 2.0,
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .alternate,
                                                          borderWidth: 2.0,
                                                          borderRadius: 8.0,
                                                          margin:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      4.0,
                                                                      16.0,
                                                                      4.0),
                                                          hidesUnderline: true,
                                                          isOverButton: true,
                                                          isSearchable: false,
                                                          isMultiSelect: false,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    45.0,
                                                                    15.0,
                                                                    45.0,
                                                                    0.0),
                                                        child: TextFormField(
                                                          controller: _model
                                                              .fullNameTextController1,
                                                          focusNode: _model
                                                              .fullNameFocusNode1,
                                                          autofocus: false,
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .words,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              '3tuhw2ed' /* Se quiser, escreva alguma cois... */,
                                                            ),
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          15.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            errorStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Figtree',
                                                                      color: Color(
                                                                          0xFFFF5963),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFF6F61EF),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFFF5963),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFFFF5963),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        20.0,
                                                                        16.0,
                                                                        20.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                          maxLines: 3,
                                                          cursorColor:
                                                              Color(0xFF6F61EF),
                                                          validator: _model
                                                              .fullNameTextController1Validator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    45.0,
                                                                    5.0,
                                                                    45.0,
                                                                    5.0),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          child: Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                visualDensity:
                                                                    VisualDensity
                                                                        .compact,
                                                                materialTapTargetSize:
                                                                    MaterialTapTargetSize
                                                                        .shrinkWrap,
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            child:
                                                                CheckboxListTile(
                                                              value: _model
                                                                      .checkboxListTileValue1 ??=
                                                                  false,
                                                              onChanged:
                                                                  (newValue) async {
                                                                safeSetState(() =>
                                                                    _model.checkboxListTileValue1 =
                                                                        newValue!);
                                                              },
                                                              title: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'gw517pcg' /* Registrar evolução de carga */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      fontSize:
                                                                          15.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              tileColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              checkColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              dense: false,
                                                              controlAffinity:
                                                                  ListTileControlAffinity
                                                                      .trailing,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Builder(
                                                        builder: (context) =>
                                                            FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'PAINEL_ADMINISTRATIVO_DO_PERSONAL_EXECUT');

                                                            await FeedbackRecord
                                                                    .createDoc(
                                                                        widget
                                                                            .cliente!)
                                                                .set(
                                                                    createFeedbackRecordData(
                                                              comentarioDoAluno:
                                                                  _model
                                                                      .fullNameTextController1
                                                                      .text,
                                                              atividadeDoAluno:
                                                                  _model
                                                                      .dropDownValue2,
                                                              codigoDoPersonal:
                                                                  columnPersonalAccountRecord
                                                                      ?.codigoPersonal,
                                                              nomeDoTreino:
                                                                  columnCreateTreinosRecord
                                                                      .nomeDoTreino,
                                                              yourName:
                                                                  currentUserDisplayName,
                                                              imgUser:
                                                                  currentUserPhoto,
                                                              diaDoTreino:
                                                                  columnCreateTreinosRecord
                                                                      .comecaEmDaRotina
                                                                      ?.toString(),
                                                              terminou: true,
                                                            ));
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (dialogContext) {
                                                                return Dialog(
                                                                  elevation: 0,
                                                                  insetPadding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  alignment: AlignmentDirectional(
                                                                          0.0,
                                                                          0.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () {
                                                                      FocusScope.of(
                                                                              dialogContext)
                                                                          .unfocus();
                                                                      FocusManager
                                                                          .instance
                                                                          .primaryFocus
                                                                          ?.unfocus();
                                                                    },
                                                                    child:
                                                                        ProfilePersonalCopyWidget(
                                                                      createTreinos:
                                                                          widget
                                                                              .createTreinos!,
                                                                      user: widget
                                                                          .cliente!,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'rwucp1pn' /* Executado */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                        ],
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.headerwebModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: HeaderwebWidget(),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          200.0, 12.0, 200.0, 0.0),
                                      child:
                                          StreamBuilder<List<TreinorsRecord>>(
                                        stream: queryTreinorsRecord(
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          List<TreinorsRecord>
                                              columnTreinorsRecordList =
                                              snapshot.data!;
                                          final columnTreinorsRecord =
                                              columnTreinorsRecordList
                                                      .isNotEmpty
                                                  ? columnTreinorsRecordList
                                                      .first
                                                  : null;

                                          return SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 200.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x08FFFFFF),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width: 80.0,
                                                            height: 80.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFE0E3E7),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(2.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            60.0),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    painelAdministrativoDoPersonalUsersRecord
                                                                        .photoUrl,
                                                                    'https://wallpapers.com/images/hd/default-user-profile-icon-lemo857tj1b3io21.png',
                                                                  ),
                                                                  width: 60.0,
                                                                  height: 60.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  painelAdministrativoDoPersonalUsersRecord
                                                                      .displayName,
                                                                  maxLines: 2,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            24.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  painelAdministrativoDoPersonalUsersRecord
                                                                      .phoneNumber,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: Color(
                                                                            0xFF4B39EF),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Aluno desde: ${dateTimeFormat(
                                                                          "d/M/y",
                                                                          painelAdministrativoDoPersonalUsersRecord
                                                                              .alunoDesde,
                                                                          locale:
                                                                              FFLocalizations.of(context).languageCode,
                                                                        )}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: Color(0xFF57636C),
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                if (painelAdministrativoDoPersonalUsersRecord
                                                                            .tipoDeGerenciamento !=
                                                                        '')
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          5.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            220.0,
                                                                        height:
                                                                            100.0,
                                                                        constraints:
                                                                            BoxConstraints(
                                                                          maxHeight:
                                                                              32.0,
                                                                        ),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4.0,
                                                                              color: Color(0x32171717),
                                                                              offset: Offset(
                                                                                0.0,
                                                                                2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(30.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                  child: Text(
                                                                                    painelAdministrativoDoPersonalUsersRecord.tipoDeGerenciamento,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: Colors.white,
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.normal,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Icon(
                                                                                Icons.radio_button_checked_outlined,
                                                                                color: Colors.white,
                                                                                size: 12.0,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    3.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'wisj49z1' /* Treinos */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'PAINEL_ADMINISTRATIVO_DO_PERSONAL_Row_x7');
                                                      FFAppState()
                                                          .updateDocumentStructStruct(
                                                        (e) => e
                                                          ..rotinaDeTreino =
                                                              columnCreateTreinosRecord
                                                                  .nomeDoTreino
                                                          ..treinos =
                                                              columnCreateTreinosRecord
                                                                  .treino
                                                                  .toList()
                                                          ..date =
                                                              columnCreateTreinosRecord
                                                                  .comecaEmDaRotina,
                                                      );
                                                      safeSetState(() {});
                                                      _model.outputDocumentCopy3 =
                                                          await actions
                                                              .generateDocument(
                                                        'CLQ4I5I-ZRREMOI-WSMZ5IA-TSGZ6WQ',
                                                        'o5NbL5HMR2LFq5d6dQDD',
                                                        'pdf',
                                                        FFAppState()
                                                            .documentStruct
                                                            .toMap(),
                                                      );
                                                      FFAppState().downloadUrl =
                                                          _model
                                                              .outputDocumentCopy3!;
                                                      safeSetState(() {});

                                                      safeSetState(() {});
                                                    },
                                                    child:
                                                        SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'PAINEL_ADMINISTRATIVO_DO_PERSONAL_BAIXAR');
                                                              _model.apiResultv200 =
                                                                  await PdfMonkeyCall
                                                                      .call(
                                                                title: columnCreateTreinosRecord
                                                                    .nomeDoTreino,
                                                                treinosList:
                                                                    columnCreateTreinosRecord
                                                                        .treino,
                                                                documentTemplateId:
                                                                    '2EBAA80D-80A5-43FB-AB69-A3A8A5D02DA8',
                                                              );

                                                              if ((_model
                                                                      .apiResultv200
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                await launchURL(
                                                                    PdfMonkeyCall
                                                                        .url(
                                                                  (_model.apiResultv200
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )!);
                                                              }

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'pxti2978' /* Baixar treino */,
                                                            ),
                                                            icon: Icon(
                                                              Icons.file_open,
                                                              size: 15.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'PAINEL_ADMINISTRATIVO_DO_PERSONAL_VISO_D');

                                                                context
                                                                    .pushNamed(
                                                                  VerTreinosWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'user':
                                                                        serializeParam(
                                                                      widget
                                                                          .cliente,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                    'createtreinos':
                                                                        serializeParam(
                                                                      columnCreateTreinosRecord
                                                                          .reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                    'carga':
                                                                        serializeParam(
                                                                      '',
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              350),
                                                                    ),
                                                                  },
                                                                );
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'ch539yr7' /* Visão do aluno */,
                                                              ),
                                                              icon: Icon(
                                                                Icons
                                                                    .remove_red_eye,
                                                                size: 15.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ),
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'PAINEL_ADMINISTRATIVO_DO_PERSONAL_EVOLUO');

                                                              context.pushNamed(
                                                                EvolucaodecargasWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'createTreinos':
                                                                      serializeParam(
                                                                    widget
                                                                        .createTreinos,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                  'users':
                                                                      serializeParam(
                                                                    widget
                                                                        .cliente,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                }.withoutNulls,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            350),
                                                                  ),
                                                                },
                                                              );
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              '3xbmpq44' /* Evolução de cargas */,
                                                            ),
                                                            icon: Icon(
                                                              Icons
                                                                  .analytics_outlined,
                                                              size: 15.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (columnCreateTreinosRecord
                                                    .treino.isNotEmpty)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                12.0,
                                                                16.0,
                                                                0.0),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final trere =
                                                            columnCreateTreinosRecord
                                                                .treino
                                                                .map((e) => e)
                                                                .toList();

                                                        return ReorderableListView
                                                            .builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          proxyDecorator: (Widget
                                                                      child,
                                                                  int index,
                                                                  Animation<
                                                                          double>
                                                                      animation) =>
                                                              Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child: child),
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              trere.length,
                                                          itemBuilder: (context,
                                                              trereIndex) {
                                                            final trereItem =
                                                                trere[
                                                                    trereIndex];
                                                            return Container(
                                                              key: ValueKey(
                                                                  "ListView_pch7i8g4" +
                                                                      '_' +
                                                                      trereIndex
                                                                          .toString()),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    minHeight:
                                                                        80.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x33000000),
                                                                        offset:
                                                                            Offset(
                                                                          0.0,
                                                                          2.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            2.0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                12.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      logFirebaseEvent('PAINEL_ADMINISTRATIVO_DO_PERSONAL_Contai');

                                                                                      await columnCreateTreinosRecord.reference.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'treino': FieldValue.arrayRemove([trereItem]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                    },
                                                                                    child: Container(
                                                                                      width: 20.0,
                                                                                      height: 20.0,
                                                                                      decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(1.0, -1.0),
                                                                                            child: Icon(
                                                                                              Icons.close_rounded,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 16.0,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Flexible(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 10.0),
                                                                                    child: StreamBuilder<List<SeriesRepeticoesRecord>>(
                                                                                      stream: querySeriesRepeticoesRecord(
                                                                                        parent: widget.cliente,
                                                                                        queryBuilder: (seriesRepeticoesRecord) => seriesRepeticoesRecord
                                                                                            .where(
                                                                                              'treinos',
                                                                                              arrayContains: trereItem,
                                                                                            )
                                                                                            .where(
                                                                                              'uidTreinos',
                                                                                              isEqualTo: widget.createTreinos?.id,
                                                                                            ),
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
                                                                                        List<SeriesRepeticoesRecord> columnSeriesRepeticoesRecordList = snapshot.data!;
                                                                                        final columnSeriesRepeticoesRecord = columnSeriesRepeticoesRecordList.isNotEmpty ? columnSeriesRepeticoesRecordList.first : null;

                                                                                        return InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('PAINEL_ADMINISTRATIVO_DO_PERSONAL_Column');
                                                                                            if (columnSeriesRepeticoesRecord != null) {
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(context).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: CardAcoesCopy2Widget(
                                                                                                        cliente: widget.cliente!,
                                                                                                        listTRE: columnCreateTreinosRecord.treino,
                                                                                                        treItem: trereItem,
                                                                                                        createTreinos: widget.createTreinos,
                                                                                                        seriesRep: columnSeriesRepeticoesRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            } else {
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(context).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: CardAcoesCopy2CopyWidget(
                                                                                                        cliente: widget.cliente!,
                                                                                                        listTRE: columnCreateTreinosRecord.treino,
                                                                                                        treItem: trereItem,
                                                                                                        createTreinos: widget.createTreinos,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            }
                                                                                          },
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                                                                                                  child: AutoSizeText(
                                                                                                    trereItem,
                                                                                                    maxLines: 2,
                                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              if (!(columnSeriesRepeticoesRecord != null))
                                                                                                Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    '1vmllsv2' /* Adicione ou edite séries para ... */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Readex Pro',
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              if (columnSeriesRepeticoesRecord?.seriesData != null && (columnSeriesRepeticoesRecord?.seriesData)!.isNotEmpty)
                                                                                                Container(
                                                                                                  child: StreamBuilder<List<SeriesRepeticoesRecord>>(
                                                                                                    stream: querySeriesRepeticoesRecord(
                                                                                                      parent: widget.cliente,
                                                                                                      queryBuilder: (seriesRepeticoesRecord) => seriesRepeticoesRecord
                                                                                                          .where(
                                                                                                            'treinos',
                                                                                                            arrayContains: trereItem,
                                                                                                          )
                                                                                                          .where(
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
                                                                                                            child: SpinKitSquareCircle(
                                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                                              size: 50.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      }
                                                                                                      List<SeriesRepeticoesRecord> listViewSeriesRepeticoesRecordList = snapshot.data!;

                                                                                                      return ReorderableListView.builder(
                                                                                                        padding: EdgeInsets.zero,
                                                                                                        primary: false,
                                                                                                        proxyDecorator: (Widget child, int index, Animation<double> animation) => Material(color: Colors.transparent, child: child),
                                                                                                        shrinkWrap: true,
                                                                                                        scrollDirection: Axis.vertical,
                                                                                                        itemCount: listViewSeriesRepeticoesRecordList.length,
                                                                                                        itemBuilder: (context, listViewIndex) {
                                                                                                          final listViewSeriesRepeticoesRecord = listViewSeriesRepeticoesRecordList[listViewIndex];
                                                                                                          return Container(
                                                                                                            key: ValueKey("ListView_b56v5d3u" + '_' + listViewIndex.toString()),
                                                                                                            child: Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              children: [
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                                                  child: Wrap(
                                                                                                                    spacing: 8.0,
                                                                                                                    runSpacing: 4.0,
                                                                                                                    alignment: WrapAlignment.start,
                                                                                                                    crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                                    direction: Axis.horizontal,
                                                                                                                    runAlignment: WrapAlignment.start,
                                                                                                                    verticalDirection: VerticalDirection.down,
                                                                                                                    clipBehavior: Clip.none,
                                                                                                                    children: [
                                                                                                                      if (listViewSeriesRepeticoesRecord.seriesRep != '')
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                                            borderRadius: BorderRadius.circular(6.0),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                RichText(
                                                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                  text: TextSpan(
                                                                                                                                    children: [
                                                                                                                                      TextSpan(
                                                                                                                                        text: FFLocalizations.of(context).getText(
                                                                                                                                          'tmby32vj' /* Series/Rep:  */,
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                              fontSize: 13.0,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      TextSpan(
                                                                                                                                        text: valueOrDefault<String>(
                                                                                                                                          listViewSeriesRepeticoesRecord.seriesRep,
                                                                                                                                          '0',
                                                                                                                                        ),
                                                                                                                                        style: TextStyle(),
                                                                                                                                      )
                                                                                                                                    ],
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Readex Pro',
                                                                                                                                          fontSize: 13.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      if (listViewSeriesRepeticoesRecord.intervalo != '')
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                                            borderRadius: BorderRadius.circular(6.0),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                RichText(
                                                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                  text: TextSpan(
                                                                                                                                    children: [
                                                                                                                                      TextSpan(
                                                                                                                                        text: FFLocalizations.of(context).getText(
                                                                                                                                          'cp545pro' /* Intervalo:  */,
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                              fontSize: 13.0,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      TextSpan(
                                                                                                                                        text: valueOrDefault<String>(
                                                                                                                                          listViewSeriesRepeticoesRecord.intervalo,
                                                                                                                                          '0',
                                                                                                                                        ),
                                                                                                                                        style: TextStyle(),
                                                                                                                                      )
                                                                                                                                    ],
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Readex Pro',
                                                                                                                                          fontSize: 13.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      if (listViewSeriesRepeticoesRecord.carga != '')
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                                            borderRadius: BorderRadius.circular(6.0),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                RichText(
                                                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                  text: TextSpan(
                                                                                                                                    children: [
                                                                                                                                      TextSpan(
                                                                                                                                        text: FFLocalizations.of(context).getText(
                                                                                                                                          '9nrj4zvk' /* Carga:  */,
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                              fontSize: 13.0,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      TextSpan(
                                                                                                                                        text: valueOrDefault<String>(
                                                                                                                                          listViewSeriesRepeticoesRecord.carga,
                                                                                                                                          '0',
                                                                                                                                        ),
                                                                                                                                        style: TextStyle(),
                                                                                                                                      )
                                                                                                                                    ],
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Readex Pro',
                                                                                                                                          fontSize: 13.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      if (listViewSeriesRepeticoesRecord.tempo != '')
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                                            borderRadius: BorderRadius.circular(6.0),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                RichText(
                                                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                  text: TextSpan(
                                                                                                                                    children: [
                                                                                                                                      TextSpan(
                                                                                                                                        text: FFLocalizations.of(context).getText(
                                                                                                                                          '4uswp9ns' /* Tempo:  */,
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                              fontSize: 13.0,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      TextSpan(
                                                                                                                                        text: valueOrDefault<String>(
                                                                                                                                          listViewSeriesRepeticoesRecord.tempo,
                                                                                                                                          '0',
                                                                                                                                        ),
                                                                                                                                        style: TextStyle(),
                                                                                                                                      )
                                                                                                                                    ],
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Readex Pro',
                                                                                                                                          fontSize: 13.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      if (listViewSeriesRepeticoesRecord.velocidade != '')
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                                            borderRadius: BorderRadius.circular(6.0),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                RichText(
                                                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                  text: TextSpan(
                                                                                                                                    children: [
                                                                                                                                      TextSpan(
                                                                                                                                        text: FFLocalizations.of(context).getText(
                                                                                                                                          'vboq5gc0' /* Velocidade:  */,
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                              fontSize: 13.0,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      TextSpan(
                                                                                                                                        text: valueOrDefault<String>(
                                                                                                                                          listViewSeriesRepeticoesRecord.velocidade,
                                                                                                                                          '0',
                                                                                                                                        ),
                                                                                                                                        style: TextStyle(),
                                                                                                                                      )
                                                                                                                                    ],
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Readex Pro',
                                                                                                                                          fontSize: 13.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      if (listViewSeriesRepeticoesRecord.inclinacao != '')
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                                            borderRadius: BorderRadius.circular(6.0),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                RichText(
                                                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                  text: TextSpan(
                                                                                                                                    children: [
                                                                                                                                      TextSpan(
                                                                                                                                        text: FFLocalizations.of(context).getText(
                                                                                                                                          'so3fqf89' /* Inclinação:  */,
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                              fontSize: 13.0,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      TextSpan(
                                                                                                                                        text: valueOrDefault<String>(
                                                                                                                                          listViewSeriesRepeticoesRecord.inclinacao,
                                                                                                                                          '0',
                                                                                                                                        ),
                                                                                                                                        style: TextStyle(),
                                                                                                                                      )
                                                                                                                                    ],
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Readex Pro',
                                                                                                                                          fontSize: 13.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      if (listViewSeriesRepeticoesRecord.distancia != '')
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                                            borderRadius: BorderRadius.circular(6.0),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                RichText(
                                                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                  text: TextSpan(
                                                                                                                                    children: [
                                                                                                                                      TextSpan(
                                                                                                                                        text: FFLocalizations.of(context).getText(
                                                                                                                                          '66a6vyrp' /* Distância:  */,
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                              fontSize: 13.0,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      TextSpan(
                                                                                                                                        text: valueOrDefault<String>(
                                                                                                                                          listViewSeriesRepeticoesRecord.distancia,
                                                                                                                                          '0',
                                                                                                                                        ),
                                                                                                                                        style: TextStyle(),
                                                                                                                                      )
                                                                                                                                    ],
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Readex Pro',
                                                                                                                                          fontSize: 13.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      if (listViewSeriesRepeticoesRecord.pace != '')
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                                            borderRadius: BorderRadius.circular(6.0),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                RichText(
                                                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                  text: TextSpan(
                                                                                                                                    children: [
                                                                                                                                      TextSpan(
                                                                                                                                        text: FFLocalizations.of(context).getText(
                                                                                                                                          'fl6bvr3m' /* Paces:  */,
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                              fontSize: 13.0,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      TextSpan(
                                                                                                                                        text: valueOrDefault<String>(
                                                                                                                                          listViewSeriesRepeticoesRecord.pace,
                                                                                                                                          '0',
                                                                                                                                        ),
                                                                                                                                        style: TextStyle(),
                                                                                                                                      )
                                                                                                                                    ],
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Readex Pro',
                                                                                                                                          fontSize: 13.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      if (listViewSeriesRepeticoesRecord.obs != '')
                                                                                                                        Container(
                                                                                                                          decoration: BoxDecoration(
                                                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                                                            borderRadius: BorderRadius.circular(6.0),
                                                                                                                          ),
                                                                                                                          child: Padding(
                                                                                                                            padding: EdgeInsets.all(6.0),
                                                                                                                            child: Column(
                                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                              children: [
                                                                                                                                RichText(
                                                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                                                  text: TextSpan(
                                                                                                                                    children: [
                                                                                                                                      TextSpan(
                                                                                                                                        text: FFLocalizations.of(context).getText(
                                                                                                                                          'bvf1pfxg' /* Observações:  */,
                                                                                                                                        ),
                                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                              fontSize: 13.0,
                                                                                                                                              letterSpacing: 0.0,
                                                                                                                                              fontWeight: FontWeight.normal,
                                                                                                                                            ),
                                                                                                                                      ),
                                                                                                                                      TextSpan(
                                                                                                                                        text: listViewSeriesRepeticoesRecord.obs,
                                                                                                                                        style: TextStyle(),
                                                                                                                                      )
                                                                                                                                    ],
                                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                          fontFamily: 'Readex Pro',
                                                                                                                                          fontSize: 13.0,
                                                                                                                                          letterSpacing: 0.0,
                                                                                                                                        ),
                                                                                                                                  ),
                                                                                                                                ),
                                                                                                                              ],
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ].divide(SizedBox(height: 4.0)),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                        onReorder: (int reorderableOldIndex, int reorderableNewIndex) async {
                                                                                                          logFirebaseEvent('PAINEL_ADMINISTRATIVO_DO_PERSONAL_ListVi');
                                                                                                          await actions.reorderSeriesRep(
                                                                                                            columnCreateTreinosRecord.verifiqueSeriesRep.map((e) => e.treino).toList(),
                                                                                                            reorderableOldIndex,
                                                                                                            reorderableNewIndex,
                                                                                                          );

                                                                                                          safeSetState(() {});
                                                                                                        },
                                                                                                      );
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                            ].divide(SizedBox(height: 4.0)),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          onReorder: (int
                                                                  reorderableOldIndex,
                                                              int reorderableNewIndex) async {
                                                            logFirebaseEvent(
                                                                'PAINEL_ADMINISTRATIVO_DO_PERSONAL_ListVi');
                                                            _model.newlists =
                                                                await actions
                                                                    .reorder(
                                                              trere.toList(),
                                                              reorderableOldIndex,
                                                              reorderableNewIndex,
                                                            );

                                                            await widget
                                                                .createTreinos!
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'treino': _model
                                                                      .newlists,
                                                                },
                                                              ),
                                                            });

                                                            safeSetState(() {});
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                if (!(columnCreateTreinosRecord
                                                    .treino.isNotEmpty))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'd7dtext3' /* Adicione um exercício a esse t... */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'PAINEL_ADMINISTRATIVO_DO_PERSONAL_ADICIO');

                                                                    context
                                                                        .pushNamed(
                                                                      CreateRotinaDeTreinoCopyWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'users':
                                                                            serializeParam(
                                                                          widget
                                                                              .cliente,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                        'treino':
                                                                            serializeParam(
                                                                          widget
                                                                              .createTreinos,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                        'tre':
                                                                            serializeParam(
                                                                          columnCreateTreinosRecord
                                                                              .treino,
                                                                          ParamType
                                                                              .String,
                                                                          isList:
                                                                              true,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        kTransitionInfoKey:
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 350),
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'rq76yc6z' /* Adicionar treinos */,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    hoverColor:
                                                                        Color(
                                                                            0xFF074DA1),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'bmk1kzwb' /* Crie seu próprio exercício par... */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'PAINEL_ADMINISTRATIVO_DO_PERSONAL_ADICIO');

                                                                    context
                                                                        .pushNamed(
                                                                      CreateTreinoCopyWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'users':
                                                                            serializeParam(
                                                                          widget
                                                                              .cliente,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'ydlu7jzf' /* Adicionar treinos */,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                if (columnCreateTreinosRecord
                                                    .treino.isNotEmpty)
                                                  Container(
                                                    width: double.infinity,
                                                    height: 150.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'cif1a3f7' /* Adicione um exercício a esse t... */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      TreinorsRecord>>(
                                                                stream:
                                                                    queryTreinorsRecord(
                                                                  queryBuilder:
                                                                      (treinorsRecord) =>
                                                                          treinorsRecord
                                                                              .where(
                                                                    'uidDoUsuario',
                                                                    isEqualTo:
                                                                        null,
                                                                  ),
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            SpinKitSquareCircle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              50.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<TreinorsRecord>
                                                                      dropDownTreinorsRecordList =
                                                                      snapshot
                                                                          .data!;

                                                                  return FlutterFlowDropDown<
                                                                      String>(
                                                                    controller: _model
                                                                        .dropDownValueController3 ??= FormFieldController<
                                                                            String>(
                                                                        null),
                                                                    options: dropDownTreinorsRecordList
                                                                        .map((e) =>
                                                                            e.treinosNoLIst)
                                                                        .toList(),
                                                                    onChanged: (val) =>
                                                                        safeSetState(() =>
                                                                            _model.dropDownValue3 =
                                                                                val),
                                                                    width:
                                                                        330.0,
                                                                    height:
                                                                        56.0,
                                                                    searchHintTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    searchTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    searchHintText:
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                      'mxn4ergj' /* Procure um exercício... */,
                                                                    ),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    elevation:
                                                                        2.0,
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    borderWidth:
                                                                        2.0,
                                                                    borderRadius:
                                                                        8.0,
                                                                    margin: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                    hidesUnderline:
                                                                        true,
                                                                    isOverButton:
                                                                        true,
                                                                    isSearchable:
                                                                        true,
                                                                    isMultiSelect:
                                                                        false,
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PAINEL_ADMINISTRATIVO_DO_PERSONAL_ADICIO');

                                                                      await widget
                                                                          .createTreinos!
                                                                          .update({
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'treino':
                                                                                FieldValue.arrayUnion([
                                                                              _model.dropDownValue3
                                                                            ]),
                                                                          },
                                                                        ),
                                                                      });
                                                                      triggerPushNotification(
                                                                        notificationTitle:
                                                                            'Seu personal adicionou novos treinos!',
                                                                        notificationText:
                                                                            'Entre para verificar seu treino.',
                                                                        notificationSound:
                                                                            'default',
                                                                        userRefs: [
                                                                          widget
                                                                              .cliente!
                                                                        ],
                                                                        initialPageName:
                                                                            'iniciarTreinoAluno',
                                                                        parameterData: {
                                                                          'createTreinos':
                                                                              widget.createTreinos,
                                                                        },
                                                                      );

                                                                      await NotificacaoRecord
                                                                          .collection
                                                                          .doc()
                                                                          .set(
                                                                              createNotificacaoRecordData(
                                                                            titulo:
                                                                                'Seu personal adicionou novos treinos!',
                                                                            descricao:
                                                                                'Entre para verificar seu treino.',
                                                                            data:
                                                                                getCurrentTimestamp,
                                                                            para:
                                                                                widget.cliente?.id,
                                                                            tipo:
                                                                                'Treinos',
                                                                            treino:
                                                                                widget.createTreinos,
                                                                          ));
                                                                    },
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'azgvwtyc' /* Adicionar */,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      elevation:
                                                                          3.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      hoverColor:
                                                                          Color(
                                                                              0xFF0A8AD4),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PAINEL_ADMINISTRATIVO_DO_PERSONAL_ADICIO');

                                                                      context
                                                                          .pushNamed(
                                                                        CreateTreinoCopyWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'users':
                                                                              serializeParam(
                                                                            widget.cliente,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                          'createTreinos':
                                                                              serializeParam(
                                                                            columnCreateTreinosRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                        extra: <String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.fade,
                                                                            duration:
                                                                                Duration(milliseconds: 320),
                                                                          ),
                                                                        },
                                                                      );
                                                                    },
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '5boi5zbr' /* Adicionar seu treino */,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      elevation:
                                                                          3.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      hoverColor:
                                                                          Color(
                                                                              0xFF0457BC),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 10.0)),
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '26s1hm8d' /* Avalie esse treino */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                controller: _model
                                                                        .dropDownValueController4 ??=
                                                                    FormFieldController<
                                                                            String>(
                                                                        null),
                                                                options: [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '7asj21ir' /* Muito leve */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'v9juuzyx' /* Leve */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'xa2c0w66' /* Moderada */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '0f6ewg5o' /* Pouco intensa */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'j8x8zn0u' /* Intensa */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'uvgwc3go' /* Muito intensa */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'xd4axuir' /* Muito, muito intensa */,
                                                                  ),
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'nmevky3k' /* Exaustão máxima */,
                                                                  )
                                                                ],
                                                                onChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.dropDownValue4 =
                                                                            val),
                                                                width: 300.0,
                                                                height: 56.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  '64gt6hhp' /* Como o aluno se sentiu? */,
                                                                ),
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 2.0,
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                borderWidth:
                                                                    2.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 20.0)),
                                                    ),
                                                  ),
                                                if (columnCreateTreinosRecord
                                                    .treino.isNotEmpty)
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 12.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: StreamBuilder<
                                                          List<
                                                              PersonalAccountRecord>>(
                                                        stream:
                                                            queryPersonalAccountRecord(
                                                          parent:
                                                              currentUserReference,
                                                          singleRecord: true,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    SpinKitSquareCircle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 50.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<PersonalAccountRecord>
                                                              columnPersonalAccountRecordList =
                                                              snapshot.data!;
                                                          final columnPersonalAccountRecord =
                                                              columnPersonalAccountRecordList
                                                                      .isNotEmpty
                                                                  ? columnPersonalAccountRecordList
                                                                      .first
                                                                  : null;

                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 550.0,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .fullNameTextController2,
                                                                    focusNode:
                                                                        _model
                                                                            .fullNameFocusNode2,
                                                                    autofocus:
                                                                        false,
                                                                    textCapitalization:
                                                                        TextCapitalization
                                                                            .words,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelText:
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                        'xvq7maac' /* Se quiser, escreva alguma cois... */,
                                                                      ),
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                15.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                      errorStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Figtree',
                                                                            color:
                                                                                Color(0xFFFF5963),
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFF6F61EF),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFFFF5963),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFFFF5963),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          20.0,
                                                                          16.0,
                                                                          20.0),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              24.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    maxLines: 3,
                                                                    cursorColor:
                                                                        Color(
                                                                            0xFF6F61EF),
                                                                    validator: _model
                                                                        .fullNameTextController2Validator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        300.0,
                                                                        5.0,
                                                                        300.0,
                                                                        5.0),
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child: Theme(
                                                                    data:
                                                                        ThemeData(
                                                                      checkboxTheme:
                                                                          CheckboxThemeData(
                                                                        visualDensity:
                                                                            VisualDensity.compact,
                                                                        materialTapTargetSize:
                                                                            MaterialTapTargetSize.shrinkWrap,
                                                                      ),
                                                                      unselectedWidgetColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                    ),
                                                                    child:
                                                                        CheckboxListTile(
                                                                      value: _model
                                                                              .checkboxListTileValue2 ??=
                                                                          false,
                                                                      onChanged:
                                                                          (newValue) async {
                                                                        safeSetState(() =>
                                                                            _model.checkboxListTileValue2 =
                                                                                newValue!);
                                                                      },
                                                                      title:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '0d4sfurh' /* Registrar evolução de carga */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              fontSize: 15.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      activeColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      checkColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .info,
                                                                      dense:
                                                                          false,
                                                                      controlAffinity:
                                                                          ListTileControlAffinity
                                                                              .trailing,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'PAINEL_ADMINISTRATIVO_DO_PERSONAL_EXECUT');

                                                                    await FeedbackRecord.createDoc(widget
                                                                            .cliente!)
                                                                        .set(
                                                                            createFeedbackRecordData(
                                                                      comentarioDoAluno: _model
                                                                          .fullNameTextController2
                                                                          .text,
                                                                      atividadeDoAluno:
                                                                          _model
                                                                              .dropDownValue4,
                                                                      codigoDoPersonal:
                                                                          columnPersonalAccountRecord
                                                                              ?.codigoPersonal,
                                                                      nomeDoTreino:
                                                                          columnCreateTreinosRecord
                                                                              .nomeDoTreino,
                                                                      yourName:
                                                                          currentUserDisplayName,
                                                                      imgUser:
                                                                          currentUserPhoto,
                                                                      diaDoTreino: columnCreateTreinosRecord
                                                                          .comecaEmDaRotina
                                                                          ?.toString(),
                                                                      terminou:
                                                                          true,
                                                                    ));
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(dialogContext).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                ProfilePersonalCopyWidget(
                                                                              createTreinos: widget.createTreinos!,
                                                                              user: widget.cliente!,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'ryqeaogi' /* Executado */,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ));
      },
    );
  }
}
