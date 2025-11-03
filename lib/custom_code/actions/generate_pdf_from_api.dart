// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

// Função para gerar PDF através da API (PDFMonkey)
Future<String> generatePdfFromApi(
  String title,
  String? message,
  List<String> treinos, // Lista de treinos
) async {
  // Dados que serão enviados para a API
  Map<String, dynamic> payload = {
    "document": {
      "document_template_id":
          "2EBAA80D-80A5-43FB-AB69-A3A8A5D02DA8", // Substitua pelo seu template ID no PDFMonkey
      "status": "pending", // Geração do documento na fila
      "payload": {
        "title": title,
        "message": message ?? '',
        "date": DateTime.now().toString(),
        "treinos": treinos, // Passa a lista de treinos corretamente
      },
      "meta": {
        "_filename": "$title.pdf", // Nome do arquivo gerado
        "clientRef": "unique-reference-id"
      }
    }
  };

  // Enviar a requisição HTTP POST para a API do PDFMonkey
  var response = await http.post(
    Uri.parse('https://api.pdfmonkey.io/api/v1/documents'),
    headers: {
      'Authorization':
          'Bearer KkKTouGpzFE9gbxE-H_L', // Substitua pela sua chave de API do PDFMonkey
      'Content-Type': 'application/json'
    },
    body: json.encode(payload),
  );

  if (response.statusCode == 201) {
    // Resposta bem-sucedida, obtemos a URL do PDF gerado
    Map<String, dynamic> responseData = json.decode(response.body);
    String pdfUrl = responseData['preview_url']; // URL do PDF gerado

    return pdfUrl; // Retorna a URL do PDF gerado
  } else {
    // Retorne algo ou lance uma exceção dependendo de como deseja tratar o erro
    return 'Erro ao gerar PDF: ${response.statusCode}';
  }
}

// Função para gerar o PDF diretamente no dispositivo, sem usar a API externa
Future<FFUploadedFile> generatePdfLocally(String title, String? message) async {
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(32),
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(DateTime.now().toString(),
                style: pw.TextStyle(fontSize: 12)),
            pw.SizedBox(height: 10),
            pw.Divider(thickness: 3),
            pw.SizedBox(height: 10),
            pw.Text(
              title,
              style: pw.TextStyle(fontSize: 24, color: PdfColors.blue),
            ),
            pw.SizedBox(height: 10),
            pw.Divider(thickness: 3),
            pw.SizedBox(height: 10),
            pw.Text(message ?? '',
                style: pw.TextStyle(fontSize: 16, color: PdfColors.blue)),
            pw.TableHelper.fromTextArray(context: context, data: [
              ['Item', 'Count'],
              ['Apple', '3'],
              ['Celery', '10'],
              ['Potato', '4'],
              ['Chicken', '12'],
            ]),
          ],
        );
      },
    ),
  );

  final Uint8List pdfBytes = await pdf.save();
  final uploadedFile = FFUploadedFile(
    bytes: pdfBytes,
    name: '$title.pdf', // Nome do arquivo gerado com base no título
  );
  return uploadedFile; // Retorna o arquivo gerado
}
