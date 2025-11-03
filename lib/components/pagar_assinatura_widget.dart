import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagar_assinatura_model.dart';
export 'pagar_assinatura_model.dart';

class PagarAssinaturaWidget extends StatefulWidget {
  const PagarAssinaturaWidget({
    super.key,
    required this.priceId,
  });

  final String? priceId;

  @override
  State<PagarAssinaturaWidget> createState() => _PagarAssinaturaWidgetState();
}

class _PagarAssinaturaWidgetState extends State<PagarAssinaturaWidget> {
  late PagarAssinaturaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PagarAssinaturaModel());

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
        AuthUserStreamWidget(
          builder: (context) => Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.1,
            child: custom_widgets.StripeSubscriptionWidget(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.1,
              emailDoCliente: currentUserEmail,
              customerName: currentUserDisplayName,
              priceId: widget!.priceId!,
              onSubscriptionSuccess: (subscriptionId) async {
                logFirebaseEvent('PAGAR_ASSINATURA_Container_1g2mjgui_CALL');
                if (subscriptionId != null && subscriptionId != '') {
                  logFirebaseEvent('StripeSubscriptionWidget_backend_call');

                  await currentUserReference!.update(createUsersRecordData(
                    assinatura: true,
                    subscribeId: widget!.priceId,
                    tipoDeAssinatura: 'Plano MH Personal',
                  ));
                  logFirebaseEvent('StripeSubscriptionWidget_bottom_sheet');
                  Navigator.pop(context);
                } else {
                  logFirebaseEvent('StripeSubscriptionWidget_bottom_sheet');
                  Navigator.pop(context);
                }
              },
            ),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Icon(
                        Icons.security_rounded,
                        color: Colors.white,
                        size: 32.0,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'uqpemhfa' /* Pagamento Seguro */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.outfit(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'fhvloik5' /* MH Personal Trainer */,
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
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
                Container(
                  width: double.infinity,
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: FlutterFlowTheme.of(context).customColor3,
                          size: 20.0,
                        ),
                        Expanded(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'v01qvvv1' /* Criptografia SSL de 256 bits */,
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
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: FlutterFlowTheme.of(context).customColor3,
                          size: 20.0,
                        ),
                        Expanded(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'sb1gcl3k' /* Dados protegidos conforme LGPD */,
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
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: FlutterFlowTheme.of(context).customColor3,
                          size: 20.0,
                        ),
                        Expanded(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'l9k8sxs3' /* Transações monitoradas 24/7 */,
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
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.check_circle_rounded,
                          color: FlutterFlowTheme.of(context).customColor3,
                          size: 20.0,
                        ),
                        Expanded(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'flnv5wqz' /* Certificação PCI DSS Level 1 */,
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
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                Container(
                  width: double.infinity,
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.ccVisa,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    FaIcon(
                      FontAwesomeIcons.ccMastercard,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    FaIcon(
                      FontAwesomeIcons.ccStripe,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    FaIcon(
                      FontAwesomeIcons.ccAmazonPay,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    FaIcon(
                      FontAwesomeIcons.ccApplePay,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    FaIcon(
                      FontAwesomeIcons.ccAmex,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          ),
        ),
      ],
    );
  }
}
