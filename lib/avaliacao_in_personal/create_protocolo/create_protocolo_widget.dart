import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_protocolo_model.dart';
export 'create_protocolo_model.dart';

class CreateProtocoloWidget extends StatefulWidget {
  const CreateProtocoloWidget({
    super.key,
    required this.user,
  });

  final DocumentReference? user;

  @override
  State<CreateProtocoloWidget> createState() => _CreateProtocoloWidgetState();
}

class _CreateProtocoloWidgetState extends State<CreateProtocoloWidget> {
  late CreateProtocoloModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateProtocoloModel());

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
          Material(
            color: Colors.transparent,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Container(
              width: double.infinity,
              height: 270.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Container(
                            width: 50.0,
                            height: 4.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFE0E3E7),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '2pc85eix' /* Escolha o protocolo a ser usad... */,
                        ),
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              font: GoogleFonts.outfit(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).customColor6,
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(60.0, 30.0, 60.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController1 ??=
                            FormFieldController<String>(null),
                        options: [
                          FFLocalizations.of(context).getText(
                            'udr7aiyi' /* Falkner, 1968 - 4 dobras */,
                          ),
                          FFLocalizations.of(context).getText(
                            'pfup8yr0' /* Pollock, 1994 - 7 Dobras */,
                          ),
                          FFLocalizations.of(context).getText(
                            '25p9w47u' /* Pollock, 1984 - 3 Dobras */,
                          ),
                          FFLocalizations.of(context).getText(
                            '2649wmqr' /* Siri & Brozek - 4 Dobras */,
                          ),
                          FFLocalizations.of(context).getText(
                            '208d67e9' /* Yuhasz - 6 Dobras */,
                          ),
                          FFLocalizations.of(context).getText(
                            'ygvss54z' /* Petroski 1995 - 4 Dobras */,
                          ),
                          FFLocalizations.of(context).getText(
                            'urq686ha' /* Guedes 1994 - 3 Dobras */,
                          ),
                          FFLocalizations.of(context).getText(
                            'wn5j06q2' /* Guedes - 2 Dobras - Crianças e... */,
                          ),
                          FFLocalizations.of(context).getText(
                            've9ogbcy' /* Penroe, Nelson e Fisher, 1985 ... */,
                          ),
                          FFLocalizations.of(context).getText(
                            'y8iyp2ud' /* Weltman e col. - Para Pessoas ... */,
                          ),
                          FFLocalizations.of(context).getText(
                            'ashhokma' /* Inserção Manual ou Bioimpendân... */,
                          )
                        ],
                        onChanged: (val) =>
                            safeSetState(() => _model.dropDownValue1 = val),
                        width: double.infinity,
                        height: 56.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF606A85),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        hintText: FFLocalizations.of(context).getText(
                          'gzw5si7o' /* Protocolo */,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        elevation: 2.0,
                        borderColor: Color(0xFFE5E7EB),
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 44.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'CREATE_PROTOCOLO_ESCOLHER_BTN_ON_TAP');
                              if (_model.dropDownValue1 ==
                                  'Falkner, 1968 - 4 dobras') {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  CreateAvaliacaoFisicafalkner1968quatrodobrasWidget
                                      .routeName,
                                  queryParameters: {
                                    'users': serializeParam(
                                      widget!.user,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else if (_model.dropDownValue1 ==
                                  'Pollock, 1994 - 7 Dobras') {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  CreateAvaliacaoFisicaPollock1994setedobrasWidget
                                      .routeName,
                                  queryParameters: {
                                    'users': serializeParam(
                                      widget!.user,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else if (_model.dropDownValue1 ==
                                  'Pollock, 1984 - 3 Dobras') {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  CreateAvaliacaoFisicaPollock1984tresdobrasWidget
                                      .routeName,
                                  queryParameters: {
                                    'users': serializeParam(
                                      widget!.user,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else if (_model.dropDownValue1 ==
                                  'Siri & Brozek - 4 Dobras') {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  CreateAvaliacaoFisicasiriebronzek4dobrasWidget
                                      .routeName,
                                  queryParameters: {
                                    'users': serializeParam(
                                      widget!.user,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else if (_model.dropDownValue1 ==
                                  'Yuhasz - 6 Dobras') {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  CreateAvaliacaoFisicayuhasz6dobrasWidget
                                      .routeName,
                                  queryParameters: {
                                    'users': serializeParam(
                                      widget!.user,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else if (_model.dropDownValue1 ==
                                  'Petroski 1995 - 4 Dobras') {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  CreateAvaliacaoFisicapetrosk1995quatrodobrasWidget
                                      .routeName,
                                  queryParameters: {
                                    'users': serializeParam(
                                      widget!.user,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else if (_model.dropDownValue1 ==
                                  'Guedes 1994 - 3 Dobras') {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  CreateAvaliacaoFisicaguedes1994tresdobrasWidget
                                      .routeName,
                                  queryParameters: {
                                    'users': serializeParam(
                                      widget!.user,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else if (_model.dropDownValue1 ==
                                  'Guedes - 2 Dobras - Crianças e Adolescentes') {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  CreateAvaliacaoFisicaguedes2dobrascriancaseadolescentesWidget
                                      .routeName,
                                  queryParameters: {
                                    'users': serializeParam(
                                      widget!.user,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else if (_model.dropDownValue1 ==
                                  'Penroe, Nelson e Fisher, 1985 e Coté e Wilmore - 2 Medidas') {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  CreateAvaliacaoFisicapenroenelsonefisher1985ecoteewilmore2medidasWidget
                                      .routeName,
                                  queryParameters: {
                                    'users': serializeParam(
                                      widget!.user,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else if (_model.dropDownValue1 ==
                                  'Weltman e col. - Para Pessoas Obesas - 2 Medidas') {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  CreateAvaliacaoFisicaWeltmanecolparapessoasobesas2medidasWidget
                                      .routeName,
                                  queryParameters: {
                                    'users': serializeParam(
                                      widget!.user,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else if (_model.dropDownValue1 ==
                                  'Inserção Manual ou Bioimpendância') {
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(
                                  CreateAvaliacaoFisicaInsersaomanulOuBioimpendanciaWidget
                                      .routeName,
                                  queryParameters: {
                                    'users': serializeParam(
                                      widget!.user,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              }
                            },
                            text: FFLocalizations.of(context).getText(
                              'v1lrnaz0' /* Escolher */,
                            ),
                            options: FFButtonOptions(
                              width: 270.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.35,
                height: 237.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'n3ppcpij' /* Escolha o protocolo a ser usad... */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.italic,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            60.0, 30.0, 60.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController2 ??=
                              FormFieldController<String>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'pg1hlx2d' /* Falkner, 1968 - 4 dobras */,
                            ),
                            FFLocalizations.of(context).getText(
                              'x4vkfuck' /* Pollock, 1994 - 7 Dobras */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ihxfd9xu' /* Pollock, 1984 - 3 Dobras */,
                            ),
                            FFLocalizations.of(context).getText(
                              'tor22949' /* Siri & Brozek - 4 Dobras */,
                            ),
                            FFLocalizations.of(context).getText(
                              'rtkpzmrn' /* Yuhasz - 6 Dobras */,
                            ),
                            FFLocalizations.of(context).getText(
                              'zjs0mbdt' /* Petroski 1995 - 4 Dobras */,
                            ),
                            FFLocalizations.of(context).getText(
                              'le3f47wf' /* Guedes 1994 - 3 Dobras */,
                            ),
                            FFLocalizations.of(context).getText(
                              'cl73t6np' /* Guedes - 2 Dobras - Crianças e... */,
                            ),
                            FFLocalizations.of(context).getText(
                              's1yahw26' /* Penroe, Nelson e Fisher, 1985 ... */,
                            ),
                            FFLocalizations.of(context).getText(
                              'j7wufykj' /* Weltman e col. - Para Pessoas ... */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ocisbx31' /* Inserção Manual ou Bioimpendân... */,
                            )
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.dropDownValue2 = val),
                          width: double.infinity,
                          height: 56.0,
                          textStyle: FlutterFlowTheme.of(context)
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
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                          hintText: FFLocalizations.of(context).getText(
                            'z2r7u7f5' /* Protocolo */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          elevation: 2.0,
                          borderColor: Color(0xFFE5E7EB),
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 44.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'CREATE_PROTOCOLO_ESCOLHER_BTN_ON_TAP');
                                if (_model.dropDownValue2 ==
                                    'Falkner, 1968 - 4 dobras') {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    CreateAvaliacaoFisicafalkner1968quatrodobrasWidget
                                        .routeName,
                                    queryParameters: {
                                      'users': serializeParam(
                                        widget!.user,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else if (_model.dropDownValue2 ==
                                    'Pollock, 1994 - 7 Dobras') {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    CreateAvaliacaoFisicaPollock1994setedobrasWidget
                                        .routeName,
                                    queryParameters: {
                                      'users': serializeParam(
                                        widget!.user,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else if (_model.dropDownValue2 ==
                                    'Pollock, 1984 - 3 Dobras') {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    CreateAvaliacaoFisicaPollock1984tresdobrasWidget
                                        .routeName,
                                    queryParameters: {
                                      'users': serializeParam(
                                        widget!.user,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else if (_model.dropDownValue2 ==
                                    'Siri & Brozek - 4 Dobras') {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    CreateAvaliacaoFisicasiriebronzek4dobrasWidget
                                        .routeName,
                                    queryParameters: {
                                      'users': serializeParam(
                                        widget!.user,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else if (_model.dropDownValue2 ==
                                    'Yuhasz - 6 Dobras') {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    CreateAvaliacaoFisicayuhasz6dobrasWidget
                                        .routeName,
                                    queryParameters: {
                                      'users': serializeParam(
                                        widget!.user,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else if (_model.dropDownValue2 ==
                                    'Petroski 1995 - 4 Dobras') {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    CreateAvaliacaoFisicapetrosk1995quatrodobrasWidget
                                        .routeName,
                                    queryParameters: {
                                      'users': serializeParam(
                                        widget!.user,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else if (_model.dropDownValue2 ==
                                    'Guedes 1994 - 3 Dobras') {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    CreateAvaliacaoFisicaguedes1994tresdobrasWidget
                                        .routeName,
                                    queryParameters: {
                                      'users': serializeParam(
                                        widget!.user,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else if (_model.dropDownValue2 ==
                                    'Guedes - 2 Dobras - Crianças e Adolescentes') {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    CreateAvaliacaoFisicaguedes2dobrascriancaseadolescentesWidget
                                        .routeName,
                                    queryParameters: {
                                      'users': serializeParam(
                                        widget!.user,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else if (_model.dropDownValue2 ==
                                    'Penroe, Nelson e Fisher, 1985 e Coté e Wilmore - 2 Medidas') {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    CreateAvaliacaoFisicapenroenelsonefisher1985ecoteewilmore2medidasWidget
                                        .routeName,
                                    queryParameters: {
                                      'users': serializeParam(
                                        widget!.user,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else if (_model.dropDownValue2 ==
                                    'Weltman e col. - Para Pessoas Obesas - 2 Medidas') {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    CreateAvaliacaoFisicaWeltmanecolparapessoasobesas2medidasWidget
                                        .routeName,
                                    queryParameters: {
                                      'users': serializeParam(
                                        widget!.user,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else if (_model.dropDownValue2 ==
                                    'Inserção Manual ou Bioimpendância') {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.pushNamed(
                                    CreateAvaliacaoFisicaInsersaomanulOuBioimpendanciaWidget
                                        .routeName,
                                    queryParameters: {
                                      'users': serializeParam(
                                        widget!.user,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                }
                              },
                              text: FFLocalizations.of(context).getText(
                                'us2mvmay' /* Escolher */,
                              ),
                              options: FFButtonOptions(
                                width: 270.0,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
