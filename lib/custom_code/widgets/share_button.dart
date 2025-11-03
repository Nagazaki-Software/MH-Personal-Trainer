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

import 'package:share_plus/share_plus.dart'; // Importando o pacote share_plus

// Widget ShareButton utilizando StatefulWidget
class ShareButton extends StatefulWidget {
  const ShareButton({
    super.key,
    this.width,
    this.height,
    required this.textToShare,
  });

  final double? width;
  final double? height;
  final String textToShare;

  @override
  State<ShareButton> createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  // Função para compartilhar o texto
  void shareText(String textToShare) {
    Share.share(textToShare); // Compartilhando o texto
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 200, // Definir largura do botão com valor padrão
      height: widget.height ?? 50, // Definir altura do botão com valor padrão
      child: ElevatedButton(
        onPressed: () {
          // Chama a função de compartilhar
          shareText(widget.textToShare);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: FlutterFlowTheme.of(context)
              .secondary, // Usando o tema do FlutterFlow
          padding: EdgeInsets.symmetric(
              vertical: 12, horizontal: 24), // Padding para o botão
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Bordas arredondadas
          ),
        ),
        child: Text(
          'Compartilhar',
          style: FlutterFlowTheme.of(context).bodyText1.copyWith(
                color: Colors.white, // Cor do texto do botão
                fontWeight: FontWeight.bold, // Texto em negrito
              ),
        ),
      ),
    );
  }
}
