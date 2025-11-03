import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'exercicioscadastrados_model.dart';
export 'exercicioscadastrados_model.dart';

/// lista de exercicios criados anteriormente
class ExercicioscadastradosWidget extends StatefulWidget {
  const ExercicioscadastradosWidget({
    super.key,
    required this.users,
    required this.treinos,
  });

  final DocumentReference? users;
  final DocumentReference? treinos;

  static String routeName = 'exercicioscadastrados';
  static String routePath = 'exercicioscadastrados';

  @override
  State<ExercicioscadastradosWidget> createState() =>
      _ExercicioscadastradosWidgetState();
}

class _ExercicioscadastradosWidgetState
    extends State<ExercicioscadastradosWidget> {
  late ExercicioscadastradosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExercicioscadastradosModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'exercicioscadastrados'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'exercicioscadastrados',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: responsiveVisibility(
              context: context,
              desktop: false,
            )
                ? AppBar(
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    automaticallyImplyLeading: false,
                    title: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'wyfasnoj' /* Lista de Exercícios */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                  ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 20.0,
                              buttonSize: 40.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.add,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ],
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'ggr2sunv' /* Gerencie seus exercícios cadas... */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.readexPro(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                    actions: [],
                    centerTitle: false,
                    elevation: 0.0,
                  )
                : null,
            body: SafeArea(
              top: true,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: StreamBuilder<List<TreinorsRecord>>(
                  stream: queryTreinorsRecord(
                    queryBuilder: (treinorsRecord) => treinorsRecord.where(
                      'uidDoUsuario',
                      isEqualTo: currentUserReference,
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
                            color: FlutterFlowTheme.of(context).customColor3,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<TreinorsRecord> columnTreinorsRecordList =
                        snapshot.data!;

                    return SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(columnTreinorsRecordList.length,
                            (columnIndex) {
                          final columnTreinorsRecord =
                              columnTreinorsRecordList[columnIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'EXERCICIOSCADASTRADOS_Container_820jlaqy');
                              logFirebaseEvent('Container_backend_call');

                              await widget!.treinos!.update({
                                ...mapToFirestore(
                                  {
                                    'treino': FieldValue.arrayUnion(
                                        [columnTreinorsRecord.treinosNoLIst]),
                                  },
                                ),
                              });
                              logFirebaseEvent(
                                  'Container_trigger_push_notification');
                              triggerPushNotification(
                                notificationTitle:
                                    'Seu personal adicionou novos treinos!',
                                notificationText:
                                    'Entre para verificar seu treino.',
                                notificationSound: 'default',
                                userRefs: [widget!.users!],
                                initialPageName: 'iniciarTreinoAluno',
                                parameterData: {
                                  'createTreinos': widget!.treinos,
                                },
                              );
                              logFirebaseEvent('Container_backend_call');

                              await NotificacaoRecord.collection
                                  .doc()
                                  .set(createNotificacaoRecordData(
                                    titulo:
                                        'Seu personal adicionou novos treinos!',
                                    descricao:
                                        'Entre para verificar seu treino.',
                                    data: getCurrentTimestamp,
                                    para: widget!.users?.id,
                                    tipo: 'Treinos',
                                    treino: widget!.treinos,
                                  ));
                              logFirebaseEvent('Container_navigate_to');
                              if (Navigator.of(context).canPop()) {
                                context.pop();
                              }
                              context.pushNamed(
                                PainelAdministrativoDoPersonalWidget.routeName,
                                queryParameters: {
                                  'cliente': serializeParam(
                                    widget!.users,
                                    ParamType.DocumentReference,
                                  ),
                                  'createTreinos': serializeParam(
                                    widget!.treinos,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                columnTreinorsRecord
                                                    .treinosNoLIst,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderRadius: 20.0,
                                                buttonSize: 40.0,
                                                fillColor: Color(0xAF002A5D),
                                                icon: Icon(
                                                  Icons.edit,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'EXERCICIOSCADASTRADOS_edit_ICN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'IconButton_navigate_to');
                                                  if (Navigator.of(context)
                                                      .canPop()) {
                                                    context.pop();
                                                  }
                                                  context.pushNamed(
                                                    CreateTreinoCopyCopyWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'users': serializeParam(
                                                        widget!.users,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                      'treinors':
                                                          serializeParam(
                                                        columnTreinorsRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                      'treinos': serializeParam(
                                                        widget!.treinos,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 350),
                                                      ),
                                                    },
                                                  );
                                                },
                                              ),
                                              FlutterFlowIconButton(
                                                borderRadius: 20.0,
                                                buttonSize: 40.0,
                                                fillColor: Color(0xFFFFEBEE),
                                                icon: Icon(
                                                  Icons.delete_outline,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  size: 20.0,
                                                ),
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'EXERCICIOSCADASTRADOS_delete_outline_ICN');
                                                  logFirebaseEvent(
                                                      'IconButton_backend_call');
                                                  await columnTreinorsRecord
                                                      .reference
                                                      .delete();
                                                },
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ],
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).divide(SizedBox(height: 16.0)),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
