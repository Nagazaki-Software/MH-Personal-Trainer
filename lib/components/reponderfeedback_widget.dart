import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'reponderfeedback_model.dart';
export 'reponderfeedback_model.dart';

/// bottom sheet responder feedback do aluno
class ReponderfeedbackWidget extends StatefulWidget {
  const ReponderfeedbackWidget({
    super.key,
    this.feedbackdocument,
  });

  final DocumentReference? feedbackdocument;

  @override
  State<ReponderfeedbackWidget> createState() => _ReponderfeedbackWidgetState();
}

class _ReponderfeedbackWidgetState extends State<ReponderfeedbackWidget> {
  late ReponderfeedbackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReponderfeedbackModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      child: StreamBuilder<FeedbackRecord>(
        stream: FeedbackRecord.getDocument(widget.feedbackdocument!),
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

          final containerFeedbackRecord = snapshot.data!;

          return Container(
            width: double.infinity,
            height: 300.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '959azw1y' /* Responder feedback */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.close_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'REPONDERFEEDBACK_close_rounded_ICN_ON_TA');
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (containerFeedbackRecord.comentarioDoAluno != '')
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            'Comentário do aluno: ${containerFeedbackRecord.comentarioDoAluno}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      TextFormField(
                        controller: _model.textController,
                        focusNode: _model.textFieldFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            '3jy3xpcc' /* Escreva seu comentário... */,
                          ),
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        maxLines: 4,
                        minLines: 3,
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'REPONDERFEEDBACK_ENVIAR_FEEDBACK_BTN_ON_');

                      await widget.feedbackdocument!
                          .update(createFeedbackRecordData(
                        respostaDoProf: _model.textController.text,
                      ));

                      await NotificacaoRecord.collection
                          .doc()
                          .set(createNotificacaoRecordData(
                            titulo: 'Seu personal respondeu seu feedback!',
                            descricao: _model.textController.text,
                            data: getCurrentTimestamp,
                            para: containerFeedbackRecord.parentReference.id,
                          ));
                      triggerPushNotification(
                        notificationTitle:
                            'Seu personal respondeu seu feedback!',
                        notificationText: _model.textController.text,
                        notificationSound: 'default',
                        userRefs: [containerFeedbackRecord.parentReference],
                        initialPageName: 'abaDeFeedbackCopy',
                        parameterData: {},
                      );
                      Navigator.pop(context);
                    },
                    text: FFLocalizations.of(context).getText(
                      'xblvgc1b' /* Enviar Feedback */,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding: EdgeInsets.all(8.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).info,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          );
        },
      ),
    );
  }
}
