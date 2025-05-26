import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/gemini/gemini.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'treinos_populares_chat_g_p_t_copy_model.dart';
export 'treinos_populares_chat_g_p_t_copy_model.dart';

class TreinosPopularesChatGPTCopyWidget extends StatefulWidget {
  const TreinosPopularesChatGPTCopyWidget({super.key});

  @override
  State<TreinosPopularesChatGPTCopyWidget> createState() =>
      _TreinosPopularesChatGPTCopyWidgetState();
}

class _TreinosPopularesChatGPTCopyWidgetState
    extends State<TreinosPopularesChatGPTCopyWidget> {
  late TreinosPopularesChatGPTCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TreinosPopularesChatGPTCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('TREINOS_POPULARES_CHAT_G_P_T_COPY_treino');
      _model.queryTreinors = await queryTreinorsRecordOnce();
      if (valueOrDefault(currentUserDocument?.objetivoNoApp, '') != '') {
        if (functions.cada4dias(getCurrentTimestamp)) {
          await geminiGenerateText(
            context,
            'Retorne somente 6 os exericicos exclusivamente desta lista  \" ${functions.formatelistaparasingle(_model.queryTreinors!.map((e) => e.treinosNoLIst).toList().toList())}\" baseando os melhores treinos para \" ${valueOrDefault(currentUserDocument?.objetivoNoApp, '')}\" (RETORNE SÓ O CONTEÚDO DA LISTA  E RETORNE A PALAVRA IGUAL A DA LISTA E COM VIRGULA NO FINAL DE CADA)',
          ).then((generatedText) {
            safeSetState(() => _model.apiResult9eo = generatedText);
          });

          FFAppState().recomendacoes = functions
              .formatStringEmList(_model.apiResult9eo!)
              .toList()
              .cast<String>();
          FFAppState().update(() {});
        } else if (!(_model.queryTreinors != null &&
            (_model.queryTreinors)!.isNotEmpty)) {
          await geminiGenerateText(
            context,
            'Retorne somente 6 os exericicos exclusivamente desta lista  \" ${functions.formatelistaparasingle(_model.queryTreinors!.map((e) => e.treinosNoLIst).toList().toList())}\" baseando os melhores treinos para \" ${valueOrDefault(currentUserDocument?.objetivoNoApp, '')}\" (RETORNE SÓ O CONTEÚDO DA LISTA  E RETORNE A PALAVRA IGUAL A DA LISTA E COM VIRGULA NO FINAL DE CADA)',
          ).then((generatedText) {
            safeSetState(() => _model.apiResult9eo2 = generatedText);
          });

          FFAppState().recomendacoes = functions
              .formatStringEmList(_model.apiResult9eo2!)
              .toList()
              .cast<String>();
          FFAppState().update(() {});
        }
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
    context.watch<FFAppState>();

    return StreamBuilder<List<TreinorsRecord>>(
      stream: queryTreinorsRecord(
        queryBuilder: (treinorsRecord) =>
            treinorsRecord.whereIn('treinosNoLIst', FFAppState().recomendacoes),
        limit: 6,
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
        List<TreinorsRecord> listViewTreinorsRecordList = snapshot.data!;

        return ListView.separated(
          padding: EdgeInsets.zero,
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: listViewTreinorsRecordList.length,
          separatorBuilder: (_, __) => SizedBox(width: 16.0),
          itemBuilder: (context, listViewIndex) {
            final listViewTreinorsRecord =
                listViewTreinorsRecordList[listViewIndex];
            return InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('TREINOS_POPULARES_CHAT_G_P_T_COPY_Contai');
                if (Navigator.of(context).canPop()) {
                  context.pop();
                }
                context.pushNamed(
                  DetalhesdotreinoWidget.routeName,
                  queryParameters: {
                    'treinors': serializeParam(
                      listViewTreinorsRecord.reference,
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
              child: Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  width: 280.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 0),
                          fadeOutDuration: Duration(milliseconds: 0),
                          imageUrl: listViewTreinorsRecord.fotoDoTreino,
                          width: 280.0,
                          height: 140.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  listViewTreinorsRecord.treinosNoLIst,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.readexPro(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.fitness_center,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 16.0,
                                    ),
                                    Text(
                                      '${listViewTreinorsRecord.colecao} • ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
