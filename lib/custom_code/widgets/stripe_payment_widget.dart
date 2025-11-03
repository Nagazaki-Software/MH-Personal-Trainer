// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/flutter_flow/flutter_flow_widgets.dart'; // Import do botão FlutterFlow
import 'dart:convert';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:http/http.dart' as http;
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

const stripePublishableKey =
    'pk_test_51R56vnP3w93hGHYvnyzlTzxRB9SLq3hIyBxLbZ642X7n4K0WTNQPNyS1Y1KPuq7MX3WSxz8MFeyjW6puFd0Ew9aX00XAFFYZMD';

Future initializeStripe() async {
  Stripe.publishableKey = stripePublishableKey;
  await Stripe.instance.applySettings();
}

class StripePaymentResponse {
  const StripePaymentResponse({this.paymentId, this.errorMessage});
  final String? paymentId;
  final String? errorMessage;
}

class StripePaymentWidget extends StatefulWidget {
  final String emailDoCliente;
  final String customerName;
  final double width;
  final double height;
  final double amount;
  final String clienteStripeId;
  final String description;
  final Future Function(String? status, String? paymentId)? onPaymentSuccess;

  const StripePaymentWidget({
    super.key,
    required this.emailDoCliente,
    required this.customerName,
    required this.width,
    required this.clienteStripeId,
    required this.description,
    required this.height,
    required this.amount,
    this.onPaymentSuccess,
  });

  @override
  State<StripePaymentWidget> createState() => _StripePaymentWidgetState();
}

class _StripePaymentWidgetState extends State<StripePaymentWidget> {
  // Variável para armazenar os dados do cartão

  Future<Map<String, dynamic>> _createPaymentIntent({
    required num amount,
    required String currency,
    required String email,
    required String name,
    required String description,
    required String clienteStripeId,
  }) async {
    final url = Uri.parse(
        'https://southamerica-east1-profissions-2746d.cloudfunctions.net/createPaymentIntent');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'amount': amount,
        'currency': "BRL",
        'email': email,
        'name': name,
        'description': description,
        'connectedAccountId': clienteStripeId,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Erro ao criar PaymentIntent: ${response.body}');
    }

    return jsonDecode(response.body);
  }

  Future<StripePaymentResponse> processStripePayment(
    BuildContext context, {
    required num amount,
    required String currency,
    required String description,
    Color? buttonColor,
    Color? buttonTextColor,
    ThemeMode themeStyle = ThemeMode.system,
  }) async {
    try {
      final response = await _createPaymentIntent(
        amount: amount,
        currency: "BRL",
        email: widget.emailDoCliente,
        name: widget.customerName,
        description: description,
        clienteStripeId: widget.clienteStripeId,
      );

      final paymentIntent = response['clientSecret'];
      final paymentId = response['paymentIntentId'];

      if (paymentIntent == null) {
        return StripePaymentResponse(
            errorMessage: 'Erro ao criar PaymentIntent');
      }

      if (kIsWeb) {
        return await showWebPaymentSheet(
          context,
          paymentId: paymentId,
          paymentIntentSecret: paymentIntent,
          amount: amount,
          currency: "BRL",
          description: description,
          buttonColor: buttonColor,
          buttonTextColor: buttonTextColor,
          themeStyle: themeStyle,
        );
      }

      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntent, // Gerado no backend
          merchantDisplayName: 'MH Personal Trainer',
          applePay: const PaymentSheetApplePay(
            merchantCountryCode: 'BR',
          ),
          googlePay: const PaymentSheetGooglePay(
            merchantCountryCode: 'BR',
            testEnv: true,
          ),
          style: themeStyle,
          billingDetails: BillingDetails(
            email: widget.emailDoCliente,
            phone: '+15555555555',
            name: widget.customerName,
            address: Address(
              city: 'San Francisco',
              country: 'US',
              line1: '123 Main St',
              line2: '',
              state: 'CA',
              postalCode: '94111',
            ),
          ),
        ),
      );

      await Stripe.instance.presentPaymentSheet();

      return StripePaymentResponse(paymentId: paymentId);
    } catch (e) {
      if (e is StripeException && e.error.code == FailureCode.Canceled) {
        return StripePaymentResponse();
      }
      return StripePaymentResponse(errorMessage: '$e');
    }
  }

  Future<StripePaymentResponse> showWebPaymentSheet(
    BuildContext context, {
    required String paymentId,
    required String paymentIntentSecret,
    required num amount,
    required String currency,
    required String description,
    Color? buttonColor,
    Color? buttonTextColor,
    ThemeMode? themeStyle,
  }) async {
    final isDarkMode = themeStyle == null
        ? Theme.of(context).brightness == Brightness.dark
        : themeStyle == ThemeMode.dark;

    buttonColor ??= FlutterFlowTheme.of(context).primary;
    final screenWidth = MediaQuery.sizeOf(context).width;

    final buildPaymentSheet = (BuildContext context, double width) => Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Material(
              color: Colors.transparent,
              child: Container(
                width: width,
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: isDarkMode ? const Color(0xFF1E1E1E) : Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4)),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Ícone de segurança
                    Icon(Icons.lock_outline,
                        size: 48.0,
                        color: isDarkMode
                            ? Colors.white
                            : FlutterFlowTheme.of(context).primary),
                    const SizedBox(height: 12.0),

                    // Título do pagamento
                    Text(
                      'Pagamento Seguro',
                      style: GoogleFonts.outfit(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),

                    // Descrição do pagamento
                    Text(
                      'Insira os dados do cartão abaixo para concluir seu pagamento.',
                      style: GoogleFonts.outfit(
                        fontSize: 14,
                        color: isDarkMode ? Colors.white70 : Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24.0),

                    // Campo de entrada do cartão
                    CardField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color:
                                isDarkMode ? Colors.white38 : Colors.grey[300]!,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24.0),

                    // Botão de pagamento
                    FFButtonWidget(
                      onPressed: () async {
                        try {
                          final result = await Stripe.instance.confirmPayment(
                            paymentIntentClientSecret: paymentIntentSecret,
                            data: PaymentMethodParams.card(
                              paymentMethodData: PaymentMethodData(),
                            ),
                            options: const PaymentMethodOptions(),
                          );

                          if (result.status == PaymentIntentsStatus.Succeeded) {
                            debugPrint(
                                'Pagamento confirmado. Retornando paymentId');
                            Navigator.pop(
                              context,
                              StripePaymentResponse(paymentId: paymentId),
                            );
                          }
                        } catch (e) {
                          Navigator.pop(
                            context,
                            StripePaymentResponse(errorMessage: '$e'),
                          );
                        }
                      },
                      text:
                          'Pagar ${_displayAmount(currency, amount.toDouble())}',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 60,
                        color: buttonColor,
                        textStyle: GoogleFonts.outfit(
                          color: buttonTextColor ?? Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );

    final result = await showDialog<StripePaymentResponse>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        content: buildPaymentSheet(context, min(420, screenWidth - 16)),
      ),
    );

    return result ?? StripePaymentResponse();
  }

  String _displayAmount(String currency, double amount) {
    return NumberFormat.simpleCurrency(name: currency).format(amount);
  }

  @override
  void initState() {
    super.initState();
    initializeStripe();
    _startPaymentProcess();
  }

  Future<void> forceInitializeStripe() async {
    // Forçar a reinicialização do Stripe com a chave pública
    Stripe.publishableKey = stripePublishableKey; // Sua chave pública
    await Stripe.instance.applySettings(); // Aplicando configurações novamente
    print("✅ Stripe reinicializado com sucesso!");
  }

  void _startPaymentProcess() async {
    final paymentCallback = widget.onPaymentSuccess;

    // Forçar a reinicialização do Stripe antes de continuar
    await forceInitializeStripe();

    final result = await processStripePayment(
      context,
      amount: widget.amount,
      currency: 'BRL',
      description: widget.description,
    );

    if (result.paymentId != null) {
      // Após o pagamento, chama a função que transfere
      final transferResponse = await http.post(
        Uri.parse(
            'https://southamerica-east1-profissions-2746d.cloudfunctions.net/verificarPaymentIntent'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'paymentId': result.paymentId!,
        }),
      );

      if (transferResponse.statusCode == 200) {
        debugPrint('✅ Pagamento e transferência concluídos!');
        await paymentCallback?.call('success', result.paymentId);
      } else {
        debugPrint(
            '⚠️ Pagamento OK, mas transferência falhou: ${transferResponse.body}');

        await paymentCallback?.call('partial_success', result.paymentId);
      }
    } else {
      debugPrint('Erro no pagamento: ${result.errorMessage}');

      await paymentCallback?.call(null, null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
