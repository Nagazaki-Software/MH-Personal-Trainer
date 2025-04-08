import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
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
    return Material(
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
          color: Colors.white,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
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
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '1573l8d1' /* Escolha o protocolo a ser usad... */,
                  ),
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF14181B),
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60.0, 30.0, 60.0, 0.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.dropDownValueController ??=
                      FormFieldController<String>(null),
                  options: [
                    FFLocalizations.of(context).getText(
                      '1r5pc0an' /* Falkner, 1968 - 4 dobras */,
                    ),
                    FFLocalizations.of(context).getText(
                      '8s0mlb3r' /* Pollock, 1994 - 7 Dobras */,
                    ),
                    FFLocalizations.of(context).getText(
                      'krljew6i' /* Pollock, 1984 - 3 Dobras */,
                    ),
                    FFLocalizations.of(context).getText(
                      'asvsy62z' /* Siri & Brozek - 4 Dobras */,
                    ),
                    FFLocalizations.of(context).getText(
                      'i1enfpa4' /* Yuhasz - 6 Dobras */,
                    ),
                    FFLocalizations.of(context).getText(
                      '8vd6v7c6' /* Petroski 1995 - 4 Dobras */,
                    ),
                    FFLocalizations.of(context).getText(
                      '34llmt6q' /* Guedes 1994 - 3 Dobras */,
                    ),
                    FFLocalizations.of(context).getText(
                      'kiqp2mrh' /* Guedes - 2 Dobras - Crianças e... */,
                    ),
                    FFLocalizations.of(context).getText(
                      'bzuvyouy' /* Penroe, Nelson e Fisher, 1985 ... */,
                    ),
                    FFLocalizations.of(context).getText(
                      'hkituszu' /* Weltman e col. - Para Pessoas ... */,
                    ),
                    FFLocalizations.of(context).getText(
                      '98jdpmj4' /* Inserção Manual ou Bioimpendân... */,
                    )
                  ],
                  onChanged: (val) =>
                      safeSetState(() => _model.dropDownValue = val),
                  width: double.infinity,
                  height: 56.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF606A85),
                        letterSpacing: 0.0,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    '946gmq33' /* Protocolo */,
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
                  margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 44.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'CREATE_PROTOCOLO_ESCOLHER_BTN_ON_TAP');
                        if (_model.dropDownValue ==
                            'Falkner, 1968 - 4 dobras') {
                          context.pushNamed(
                            CreateAvaliacaoFisicafalkner1968quatrodobrasWidget
                                .routeName,
                            queryParameters: {
                              'users': serializeParam(
                                widget.user,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Pollock, 1994 - 7 Dobras') {
                          context.pushNamed(
                            CreateAvaliacaoFisicaPollock1994setedobrasWidget
                                .routeName,
                            queryParameters: {
                              'users': serializeParam(
                                widget.user,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Pollock, 1984 - 3 Dobras') {
                          context.pushNamed(
                            CreateAvaliacaoFisicaPollock1984tresdobrasWidget
                                .routeName,
                            queryParameters: {
                              'users': serializeParam(
                                widget.user,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Siri & Brozek - 4 Dobras') {
                          context.pushNamed(
                            CreateAvaliacaoFisicasiriebronzek4dobrasWidget
                                .routeName,
                            queryParameters: {
                              'users': serializeParam(
                                widget.user,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Yuhasz - 6 Dobras') {
                          context.pushNamed(
                            CreateAvaliacaoFisicayuhasz6dobrasWidget.routeName,
                            queryParameters: {
                              'users': serializeParam(
                                widget.user,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Petroski 1995 - 4 Dobras') {
                          context.pushNamed(
                            CreateAvaliacaoFisicapetrosk1995quatrodobrasWidget
                                .routeName,
                            queryParameters: {
                              'users': serializeParam(
                                widget.user,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Guedes 1994 - 3 Dobras') {
                          context.pushNamed(
                            CreateAvaliacaoFisicaguedes1994tresdobrasWidget
                                .routeName,
                            queryParameters: {
                              'users': serializeParam(
                                widget.user,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Guedes - 2 Dobras - Crianças e Adolescentes') {
                          context.pushNamed(
                            CreateAvaliacaoFisicaguedes2dobrascriancaseadolescentesWidget
                                .routeName,
                            queryParameters: {
                              'users': serializeParam(
                                widget.user,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Penroe, Nelson e Fisher, 1985 e Coté e Wilmore - 2 Medidas') {
                          context.pushNamed(
                            CreateAvaliacaoFisicapenroenelsonefisher1985ecoteewilmore2medidasWidget
                                .routeName,
                            queryParameters: {
                              'users': serializeParam(
                                widget.user,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Weltman e col. - Para Pessoas Obesas - 2 Medidas') {
                          context.pushNamed(
                            CreateAvaliacaoFisicaWeltmanecolparapessoasobesas2medidasWidget
                                .routeName,
                            queryParameters: {
                              'users': serializeParam(
                                widget.user,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        } else if (_model.dropDownValue ==
                            'Inserção Manual ou Bioimpendância') {
                          context.pushNamed(
                            CreateAvaliacaoFisicaInsersaomanulOuBioimpendanciaWidget
                                .routeName,
                            queryParameters: {
                              'users': serializeParam(
                                widget.user,
                                ParamType.DocumentReference,
                              ),
                            }.withoutNulls,
                          );
                        }
                      },
                      text: FFLocalizations.of(context).getText(
                        'o1684z31' /* Escolher */,
                      ),
                      options: FFButtonOptions(
                        width: 270.0,
                        height: 50.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
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
    );
  }
}
