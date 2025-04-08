import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/gemini/gemini.dart';
import '/components/perfil_do_mh_assistente_widget.dart';
import '/components/recomendacoes_i_a_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'chat_m_h_assistente_model.dart';
export 'chat_m_h_assistente_model.dart';

/// chat com outra pessoa
class ChatMHAssistenteWidget extends StatefulWidget {
  const ChatMHAssistenteWidget({super.key});

  static String routeName = 'chatMHAssistente';
  static String routePath = 'chatMHAssistente';

  @override
  State<ChatMHAssistenteWidget> createState() => _ChatMHAssistenteWidgetState();
}

class _ChatMHAssistenteWidgetState extends State<ChatMHAssistenteWidget>
    with TickerProviderStateMixin {
  late ChatMHAssistenteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatMHAssistenteModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CHAT_M_H_ASSISTENTE_chatMHAssistente_ON_');
      _model.queryTreinors = await queryTreinorsRecordOnce();
      _model.queryCreatetREINOS = await queryCreateTreinosRecordOnce(
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      await geminiGenerateText(
        context,
        '**Finja ser o MH Personal Trainer, você está conversando com ${currentUserDisplayName}, você começa a conversa.',
      ).then((generatedText) {
        safeSetState(() => _model.primeiraCV = generatedText);
      });

      FFAppState().addToChat(MessageStruct(
        text: _model.primeiraCV,
        role: 'system',
        data: getCurrentTimestamp,
      ));
      safeSetState(() {});
      if ((String var1) {
        return var1 == "system" || var1 == "user";
      }(FFAppState().chat.lastOrNull!.role)) {
        await _model.columnController?.animateTo(
          _model.columnController!.position.maxScrollExtent,
          duration: Duration(milliseconds: 100),
          curve: Curves.ease,
        );
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.31,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: FlutterFlowTheme.of(context).primary,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 360.0.ms,
            duration: 860.0.ms,
            color: Color(0xBA7909AD),
            angle: 2.443,
          ),
        ],
      ),
    });

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

    return Title(
        title: 'chatMHAssistente',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 2.0,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'CHAT_M_H_ASSISTENTE_Row_1k97ppou_ON_TAP');
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: PerfilDoMhAssistenteWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderRadius: 20.0,
                                      buttonSize: 40.0,
                                      fillColor: Colors.transparent,
                                      icon: Icon(
                                        Icons.arrow_back,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'CHAT_M_H_ASSISTENTE_arrow_back_ICN_ON_TA');
                                        context.safePop();
                                      },
                                    ),
                                    Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        child: Image.asset(
                                          'assets/images/y_(6).png',
                                          width: 50.0,
                                          height: 50.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'efmo9zvy' /* MH Assistente */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        GradientText(
                                          FFLocalizations.of(context).getText(
                                            '3jsif7k3' /* Versão 0.7.9 beta fechado */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                              ),
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            FlutterFlowTheme.of(context).primary
                                          ],
                                          gradientDirection:
                                              GradientDirection.ltr,
                                          gradientType: GradientType.linear,
                                        ),
                                      ],
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 20.0,
                                  buttonSize: 40.0,
                                  fillColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.more_vert,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Builder(
                        builder: (context) {
                          final chat = FFAppState().chat.toList();

                          return SingleChildScrollView(
                            primary: false,
                            controller: _model.columnController,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: List.generate(chat.length, (chatIndex) {
                                final chatItem = chat[chatIndex];
                                return Builder(
                                  builder: (context) {
                                    if ((String var1) {
                                      return var1 == "user";
                                    }(chatItem.role)) {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(1.0, -1.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.7,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(12.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(12.0),
                                              topRight: Radius.circular(12.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 12.0, 12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      chatItem.text,
                                                      'Erro em sua mensagem, verifique sua conexão.',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 1.0),
                                                  child: Text(
                                                    dateTimeFormat(
                                                      "relative",
                                                      chatItem.data!,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    textAlign: TextAlign.end,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation1']!),
                                      );
                                    } else {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.7,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(12.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(12.0),
                                                    topRight:
                                                        Radius.circular(12.0),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 12.0,
                                                          12.0, 12.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, -1.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            chatItem.text,
                                                            'Bip-Bop, algo está errada com minha programação.',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 1.0),
                                                        child: Text(
                                                          dateTimeFormat(
                                                            "relative",
                                                            chatItem.data!,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          textAlign:
                                                              TextAlign.end,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'containerOnPageLoadAnimation2']!),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  },
                                );
                              }).divide(SizedBox(height: 16.0)),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                if ((FFAppState().pergunta == '') &&
                    responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: wrapWithModel(
                          model: _model.recomendacoesIAModel,
                          updateCallback: () => safeSetState(() {}),
                          child: RecomendacoesIAWidget(),
                        ),
                      ),
                    ],
                  ),
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if ((_model.chatGPTs != null && _model.chatGPTs != '') &&
                          (_model.primeiraCV != null &&
                              _model.primeiraCV != '') &&
                          (_model.textFieldFocusNode?.hasFocus ?? false))
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 20.0,
                              height: 20.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/y_(6).png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ixaknnxf' /* MH Assisntente está digitando.... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation']!),
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation']!),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: TextFormField(
                                              controller: _model.textController,
                                              focusNode:
                                                  _model.textFieldFocusNode,
                                              onFieldSubmitted: (_) async {
                                                logFirebaseEvent(
                                                    'CHAT_M_H_ASSISTENTE_TextField_o183of5b_O');
                                                if (FFAppState()
                                                        .mhassisyentenavegacao !=
                                                    'Pediu um treino') {
                                                  FFAppState()
                                                      .addToChat(MessageStruct(
                                                    text: _model
                                                        .textController.text,
                                                    role: 'user',
                                                    data: getCurrentTimestamp,
                                                  ));
                                                  FFAppState().msgDoUsuario =
                                                      _model
                                                          .textController.text;
                                                  FFAppState().update(() {});
                                                  safeSetState(() {
                                                    _model.textController
                                                        ?.clear();
                                                  });
                                                  await geminiGenerateText(
                                                    context,
                                                    '**Este é o pedido do usuário se puder fingir ser o MH Assistente o assistente virtual do aluno  e responda esta mensagem** Pergunta:${FFAppState().msgDoUsuario}',
                                                  ).then((generatedText) {
                                                    safeSetState(() =>
                                                        _model.chatGPT =
                                                            generatedText);
                                                  });

                                                  FFAppState()
                                                      .addToChat(MessageStruct(
                                                    text: functions
                                                        .formatTextGemini(
                                                            _model.chatGPT!),
                                                    role: 'system',
                                                    data: getCurrentTimestamp,
                                                  ));
                                                  FFAppState().update(() {});
                                                  await _model.columnController
                                                      ?.animateTo(
                                                    _model
                                                        .columnController!
                                                        .position
                                                        .maxScrollExtent,
                                                    duration: Duration(
                                                        milliseconds: 350),
                                                    curve: Curves.ease,
                                                  );
                                                  await geminiGenerateText(
                                                    context,
                                                    'Verifique pra mim se isso \"${FFAppState().msgDoUsuario}\" verifique se é sobre saúde, fitness, academia, receitas para treino, pre treino, se não for retorne exclusivamente \"Não é sobre saúde\" nada mais.',
                                                  ).then((generatedText) {
                                                    safeSetState(() => _model
                                                            .verifiqueSesobreSauce =
                                                        generatedText);
                                                  });

                                                  if (_model
                                                          .verifiqueSesobreSauce !=
                                                      'Não é sobre saúde') {
                                                    await geminiGenerateText(
                                                      context,
                                                      '**Este não é uma pergunta sobre saúde se puder fingir ser o MH Assistente e responder esta mensagem**Retorne que o MH Assistente só pode conversar sobre sáudeMensagem do usuário: \"${FFAppState().msgDoUsuario}\".',
                                                    ).then((generatedText) {
                                                      safeSetState(() =>
                                                          _model.naoedesaude =
                                                              generatedText);
                                                    });

                                                    FFAppState().addToChat(
                                                        MessageStruct(
                                                      text: functions
                                                          .formatTextGemini(
                                                              _model
                                                                  .naoedesaude!),
                                                      role: 'system',
                                                      data: getCurrentTimestamp,
                                                    ));
                                                    FFAppState().update(() {});
                                                  }
                                                }

                                                safeSetState(() {});
                                              },
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'eaeqef5i' /* Digite uma mensagem... */,
                                                ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              minLines: 1,
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Stack(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    if (FFAppState().mhassisyentenavegacao ==
                                        'Pediu um treino')
                                      Container(
                                        width: 48.0,
                                        height: 48.0,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFF8938FF),
                                              FlutterFlowTheme.of(context)
                                                  .secondary
                                            ],
                                            stops: [0.0, 1.0],
                                            begin:
                                                AlignmentDirectional(0.0, -1.0),
                                            end: AlignmentDirectional(0, 1.0),
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation3']!),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'CHAT_M_H_ASSISTENTE_Icon_hk5gh8oc_ON_TAP');
                                          FFAppState().addToChat(MessageStruct(
                                            text: _model.textController.text,
                                            role: 'user',
                                            data: getCurrentTimestamp,
                                          ));
                                          FFAppState().msgDoUsuario =
                                              _model.textController.text;
                                          FFAppState().update(() {});
                                          safeSetState(() {
                                            _model.textController?.clear();
                                          });
                                          await geminiGenerateText(
                                            context,
                                            '**Este é o pedido do usuário se puder fingir ser o MH Assistente o assistente virtual do aluno  e responda esta mensagem**(Lembre-se que se ele pedir algo relacionado a treino retorne essa lista de treino) /n${functions.formatelistaparasingle(_model.queryTreinors!.map((e) => valueOrDefault<String>(
                                                  e.treinosNoLIst,
                                                  '0',
                                                )).toList())}/n Pergunta:${FFAppState().msgDoUsuario}',
                                          ).then((generatedText) {
                                            safeSetState(() => _model.chatGPTs =
                                                generatedText);
                                          });

                                          FFAppState().addToChat(MessageStruct(
                                            text: functions.formatTextGemini(
                                                _model.chatGPTs!),
                                            role: 'system',
                                            data: getCurrentTimestamp,
                                          ));
                                          FFAppState().update(() {});
                                          await _model.columnController
                                              ?.animateTo(
                                            _model.columnController!.position
                                                .maxScrollExtent,
                                            duration:
                                                Duration(milliseconds: 350),
                                            curve: Curves.ease,
                                          );
                                          await geminiGenerateText(
                                            context,
                                            'Verifique pra mim se isso \"${FFAppState().msgDoUsuario}\" é sobre saúde, fitness ou academia, se não for retorne exclusivamente \"Não é sobre saúde\" nada mais.',
                                          ).then((generatedText) {
                                            safeSetState(() =>
                                                _model.verifiqueSesobreSaude =
                                                    generatedText);
                                          });

                                          await geminiGenerateText(
                                            context,
                                            'Verifique pra mim se essa mensagem  \"${FFAppState().msgDoUsuario}\" é um pedido de treino (exemplo: faça um treino de musculação), se for retorne exclusivamente \"É um pedido de treino\" nada mais.',
                                          ).then((generatedText) {
                                            safeSetState(() =>
                                                _model.verifiqueseOtreino =
                                                    generatedText);
                                          });

                                          if (_model.verifiqueSesobreSaude ==
                                              'Não é sobre saúde') {
                                            await geminiGenerateText(
                                              context,
                                              '**Este não é uma pergunta sobre saúde se puder fingir ser o MH Assistente e responder esta mensagem**Retorne que o MH Assistente só pode conversar sobre sáudeMensagem do usuário: \"${FFAppState().msgDoUsuario}\".',
                                            ).then((generatedText) {
                                              safeSetState(() =>
                                                  _model.naoedesaudes =
                                                      generatedText);
                                            });

                                            FFAppState()
                                                .addToChat(MessageStruct(
                                              text: functions.formatTextGemini(
                                                  _model.naoedesaudes!),
                                              role: 'system',
                                              data: getCurrentTimestamp,
                                            ));
                                            FFAppState().update(() {});
                                          } else if (_model
                                                  .verifiqueseOtreino !=
                                              'É um pedido de treino') {
                                            await geminiGenerateText(
                                              context,
                                              'Retorne somente em uma lista sem nada mais, o treino que o usuário pediu \"${FFAppState().msgDoUsuario}\" baseado no que o gemini respondeu \"${_model.chatGPTs}\" retorne-os com os exercicios adequado do nosso banco de dados: ${functions.formatelistaparasingle(_model.queryTreinors!.map((e) => valueOrDefault<String>(
                                                    e.treinosNoLIst,
                                                    '0',
                                                  )).toList())} (Faça como lista (tente fazer igual a essa: {rotina_de_treino: nome:, objetivo:, observacoes:, dia_da_semana:, {exercicios: [\'nome:\']} ) nome da rotina de treino, objetivo observacoes, dia da semana para realizar, (coloque alem de series repeticoes coloque tambem se for necessario para o treino: carga, inclinação, tempo, intervalo, distancia, velocidade e pace, series e repeticoes (retorne todos os exercicios com os mesmos)como subcategoria do exercicio)',
                                            ).then((generatedText) {
                                              safeSetState(() => _model
                                                  .listsTreino = generatedText);
                                            });

                                            if (_model.listsTreino != null &&
                                                _model.listsTreino != '') {
                                              await geminiGenerateText(
                                                context,
                                                '**Finja ser o MH Assistente**Responda com treino criado com sucesso sobre este treino: ${_model.chatGPTs} \"responda com poucas palavras\".\" (mas responde tipo \"treino foi criado com sucesso.\"',
                                              ).then((generatedText) {
                                                safeSetState(() => _model
                                                        .treinocriadocomsucessos =
                                                    generatedText);
                                              });

                                              FFAppState()
                                                  .addToChat(MessageStruct(
                                                text: functions
                                                    .formatTextGemini(_model
                                                        .treinocriadocomsucessos!),
                                                role: 'system',
                                                data: getCurrentTimestamp,
                                              ));
                                              FFAppState()
                                                      .mhassisyentenavegacao =
                                                  'Pedido ja feito';
                                              FFAppState().treinoInJson =
                                                  functions.formatStringToJson(
                                                      _model.listsTreino!);
                                              FFAppState().update(() {});
                                              _model.exercicio = getJsonField(
                                                FFAppState().treinoInJson,
                                                r'''$.rotina_de_treino.exercicios.nome''',
                                              ).toString();
                                              safeSetState(() {});

                                              var createTreinosRecordReference =
                                                  CreateTreinosRecord.createDoc(
                                                      currentUserReference!);
                                              await createTreinosRecordReference
                                                  .set({
                                                ...createCreateTreinosRecordData(
                                                  nomeDaRotina: getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.nome''',
                                                  ).toString(),
                                                  objetivoDaRotina:
                                                      getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.objetivo''',
                                                  ).toString(),
                                                  obsInstrucaoDaRotina:
                                                      getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.observacoes''',
                                                  ).toString(),
                                                  diaDoTreino: getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.dia_da_semana''',
                                                  ).toString(),
                                                  nomeDoTreino: getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.nome''',
                                                  ).toString(),
                                                  terminoDoTreino:
                                                      functions.date(),
                                                  terminarEmDaRotina:
                                                      functions.date(),
                                                  comecaEmDaRotina:
                                                      getCurrentTimestamp,
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'treino': functions
                                                        .formatStringEmList(
                                                            getJsonField(
                                                      FFAppState().treinoInJson,
                                                      r'''$.rotina_de_treino.exercicios[*].nome''',
                                                    ).toString()),
                                                  },
                                                ),
                                              });
                                              _model.createTreinos =
                                                  CreateTreinosRecord
                                                      .getDocumentFromData({
                                                ...createCreateTreinosRecordData(
                                                  nomeDaRotina: getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.nome''',
                                                  ).toString(),
                                                  objetivoDaRotina:
                                                      getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.objetivo''',
                                                  ).toString(),
                                                  obsInstrucaoDaRotina:
                                                      getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.observacoes''',
                                                  ).toString(),
                                                  diaDoTreino: getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.dia_da_semana''',
                                                  ).toString(),
                                                  nomeDoTreino: getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.nome''',
                                                  ).toString(),
                                                  terminoDoTreino:
                                                      functions.date(),
                                                  terminarEmDaRotina:
                                                      functions.date(),
                                                  comecaEmDaRotina:
                                                      getCurrentTimestamp,
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'treino': functions
                                                        .formatStringEmList(
                                                            getJsonField(
                                                      FFAppState().treinoInJson,
                                                      r'''$.rotina_de_treino.exercicios[*].nome''',
                                                    ).toString()),
                                                  },
                                                ),
                                              }, createTreinosRecordReference);

                                              await SeriesRepeticoesRecord
                                                      .createDoc(
                                                          currentUserReference!)
                                                  .set({
                                                ...createSeriesRepeticoesRecordData(
                                                  seriesRep:
                                                      'Series: ${getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.exercicios.series''',
                                                  ).toString()} - Repetições: ${getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.exercicios.repeticoes''',
                                                  ).toString()}',
                                                  carga: getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.exercicios.carga''',
                                                  ).toString(),
                                                  obs: getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.exercicios.observacoes''',
                                                  ).toString(),
                                                  intervalo: getJsonField(
                                                    FFAppState().treinoInJson,
                                                    r'''$.rotina_de_treino.exercicios.intervalo''',
                                                  ).toString(),
                                                  uidTreinos: _model
                                                      .queryCreatetREINOS
                                                      ?.reference
                                                      .id,
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'treinos': functions
                                                        .formatStringEmList(
                                                            getJsonField(
                                                      FFAppState().treinoInJson,
                                                      r'''$.rotina_de_treino.exercicios[*].nome''',
                                                    ).toString()),
                                                  },
                                                ),
                                              });
                                            } else {
                                              await geminiGenerateText(
                                                context,
                                                '**Finja ser o MH Assistente**Responda com treino não foi criado neste treino: ${_model.chatGPTs}',
                                              ).then((generatedText) {
                                                safeSetState(() => _model
                                                        .treinocriadonaocriados =
                                                    generatedText);
                                              });

                                              FFAppState()
                                                  .addToChat(MessageStruct(
                                                text: functions
                                                    .formatTextGemini(_model
                                                        .treinocriadonaocriados!),
                                                role: 'system',
                                                data: getCurrentTimestamp,
                                              ));
                                              FFAppState().update(() {});
                                            }
                                          }

                                          safeSetState(() {});
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.dumbbell,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
