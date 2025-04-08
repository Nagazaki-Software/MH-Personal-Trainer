import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/link_de_afiliacao_copiado_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:share_plus/share_plus.dart';
import 'codigodeafiliacao_model.dart';
export 'codigodeafiliacao_model.dart';

/// container de informação para enviar o link de código de afiliação do
/// personal para o aluno criar conta
class CodigodeafiliacaoWidget extends StatefulWidget {
  const CodigodeafiliacaoWidget({
    super.key,
    required this.codigoDoPersonal,
    required this.referencePersonal,
  });

  final String? codigoDoPersonal;
  final DocumentReference? referencePersonal;

  @override
  State<CodigodeafiliacaoWidget> createState() =>
      _CodigodeafiliacaoWidgetState();
}

class _CodigodeafiliacaoWidgetState extends State<CodigodeafiliacaoWidget> {
  late CodigodeafiliacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodigodeafiliacaoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PersonalAccountRecord>>(
      stream: queryPersonalAccountRecord(
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
              child: SpinKitSquareCircle(
                color: FlutterFlowTheme.of(context).primary,
                size: 50.0,
              ),
            ),
          );
        }
        List<PersonalAccountRecord> containerPersonalAccountRecordList =
            snapshot.data!;
        final containerPersonalAccountRecord =
            containerPersonalAccountRecordList.isNotEmpty
                ? containerPersonalAccountRecordList.first
                : null;

        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    1.0,
                  ),
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'lwzmacuz' /* Código de Afiliação */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '90dm6plb' /* Compartilhe seu código */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.content_copy,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'CODIGODEAFILIACAO_content_copy_ICN_ON_TA');
                            await Clipboard.setData(ClipboardData(
                                text:
                                    'E aí, Tudo certo? 😊, Quero te convidar a usar o MH Personal Trainer pra treinar comigo de um jeito mais personalizado!Com o meu código ${widget.codigoDoPersonal} você terá acesso ao meu treino personalizado. É só criar sua conta no link aqui: https://app.mhpersonaltrainer.com.br/linkdeafiliacao?personal=${currentUserReference?.id} Bora começar os treinos! 💪'));
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SelectionArea(
                            child: Text(
                          'Código de personal: ${valueOrDefault<String>(
                            widget.codigoDoPersonal,
                            'Erro',
                          )}',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'd4matpbt' /* Envie este código para seus al... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Builder(
                    builder: (context) => FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'CODIGODEAFILIACAO_COMPARTILHAR_LINK_BTN_');
                        if (isWeb) {
                          await Clipboard.setData(ClipboardData(
                              text:
                                  'E aí, Tudo certo? 😊, Quero te convidar a usar o MH Personal Trainer pra treinar comigo de um jeito mais personalizado!Com o meu código ${widget.codigoDoPersonal} você terá acesso ao meu treino personalizado. É só criar sua conta no link aqui: https://app.mhpersonaltrainer.com.br/linkdeafiliacao?personal=${currentUserReference?.id} Bora começar os treinos! 💪'));
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: LinkDeAfiliacaoCopiadoWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        } else {
                          await Share.share(
                            'E aí, Tudo certo? 😊, Quero te convidar a usar o MH Personal Trainer pra treinar comigo de um jeito mais personalizado!Com o meu código ${widget.codigoDoPersonal} você terá acesso ao meu treino personalizado. É só criar sua conta no link aqui: https://app.mhpersonaltrainer.com.br/linkdeafiliacao?personal=${currentUserReference?.id} Bora começar os treinos! 💪',
                            sharePositionOrigin: getWidgetBoundingBox(context),
                          );
                        }
                      },
                      text: FFLocalizations.of(context).getText(
                        '6wzlog9d' /* Compartilhar Link */,
                      ),
                      icon: Icon(
                        Icons.share,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
            ),
          ),
        );
      },
    );
  }
}
