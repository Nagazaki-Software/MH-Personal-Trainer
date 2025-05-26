import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
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
    return AuthUserStreamWidget(
      builder: (context) => Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.1,
        child: custom_widgets.StripeSubscriptionWidget(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.1,
          emailDoCliente: currentUserEmail,
          customerName: currentUserDisplayName,
          priceId: widget.priceId!,
          onSubscriptionSuccess: (subscriptionId) async {
            logFirebaseEvent('PAGAR_ASSINATURA_Container_1g2mjgui_CALL');
            if (subscriptionId != null && subscriptionId != '') {
              await currentUserReference!.update(createUsersRecordData(
                assinatura: true,
                subscribeId: widget.priceId,
              ));
              Navigator.pop(context);
            } else {
              Navigator.pop(context);
            }
          },
        ),
      ),
    );
  }
}
