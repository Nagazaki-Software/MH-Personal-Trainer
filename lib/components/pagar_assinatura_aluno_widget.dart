import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'pagar_assinatura_aluno_model.dart';
export 'pagar_assinatura_aluno_model.dart';

class PagarAssinaturaAlunoWidget extends StatefulWidget {
  const PagarAssinaturaAlunoWidget({
    super.key,
    required this.priceId,
  });

  final String? priceId;

  @override
  State<PagarAssinaturaAlunoWidget> createState() =>
      _PagarAssinaturaAlunoWidgetState();
}

class _PagarAssinaturaAlunoWidgetState
    extends State<PagarAssinaturaAlunoWidget> {
  late PagarAssinaturaAlunoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PagarAssinaturaAlunoModel());

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
        height: double.infinity,
        child: custom_widgets.StripeSubscriptionWidgetAluno(
          width: double.infinity,
          height: double.infinity,
          emailDoCliente: currentUserEmail,
          customerName: currentUserDisplayName,
          priceId: widget.priceId!,
          onSubscriptionSuccess: (subscriptionId) async {},
        ),
      ),
    );
  }
}
