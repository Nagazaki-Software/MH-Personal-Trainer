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

import 'package:http/http.dart' as http;

import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';
import 'package:characters/characters.dart';
import 'package:flutter/services.dart' show NetworkAssetBundle;

// Remove acentos de textos para evitar erro com Helvetica
String removeAcentos(String texto) {
  final mapa = {
    'á': 'a',
    'à': 'a',
    'ã': 'a',
    'â': 'a',
    'ä': 'a',
    'é': 'e',
    'è': 'e',
    'ê': 'e',
    'ë': 'e',
    'í': 'i',
    'ì': 'i',
    'î': 'i',
    'ï': 'i',
    'ó': 'o',
    'ò': 'o',
    'õ': 'o',
    'ô': 'o',
    'ö': 'o',
    'ú': 'u',
    'ù': 'u',
    'û': 'u',
    'ü': 'u',
    'ç': 'c',
    'Á': 'A',
    'À': 'A',
    'Ã': 'A',
    'Â': 'A',
    'Ä': 'A',
    'É': 'E',
    'È': 'E',
    'Ê': 'E',
    'Ë': 'E',
    'Í': 'I',
    'Ì': 'I',
    'Î': 'I',
    'Ï': 'I',
    'Ó': 'O',
    'Ò': 'O',
    'Õ': 'O',
    'Ô': 'O',
    'Ö': 'O',
    'Ú': 'U',
    'Ù': 'U',
    'Û': 'U',
    'Ü': 'U',
    'Ç': 'C',
  };

  return texto.characters.map((c) => mapa[c] ?? c).join();
}

Future<String> generateAndUploadPdf(
  String nomeDaRotina,
  List<String> nomeDoTreinoList,
  String nomeDoAluno,
  String nomeDoPersonal,
  DateTime diaDoPdf,
  String uidCreateTreinos,
  List<SeriesRepeticoesRecord> seriesRepList,
) async {
  final pdf = pw.Document();

  // Filtra os registros com uidTreinos correspondente
  final filteredSeries = seriesRepList
      .where((item) => item.uidTreinos == uidCreateTreinos)
      .toList();

  // Carrega a logo da empresa via URL

  final response = await http.get(Uri.parse(
      'https://firebasestorage.googleapis.com/v0/b/profissions-2746d.appspot.com/o/PT-transparente-1.png?alt=media&token=feeafb1e-9283-4563-ab6b-c8e7c46f99c9'));

  final logo = pw.MemoryImage(response.bodyBytes);

  // Cor azul escura
  final PdfColor azulEscuro = PdfColor.fromHex('#002A5D');

  pdf.addPage(
    pw.MultiPage(
      build: (context) {
        List<pw.Widget> content = [];

        // Adiciona logo no topo
        content.add(pw.Center(
          child: pw.Image(logo, width: 100),
        ));
        content.add(pw.SizedBox(height: 10));

        // Título em negrito, azul escuro e centralizado
        content.add(pw.Center(
          child: pw.Text(
            'Ficha de Treino',
            style: pw.TextStyle(
              fontSize: 24,
              fontWeight: pw.FontWeight.bold,
              color: azulEscuro,
            ),
          ),
        ));
        content.add(pw.SizedBox(height: 8));

        // Informações do aluno - deixa normal (preto)
        content.add(pw.Text('Aluno: ${removeAcentos(nomeDoAluno)}'));
        content.add(pw.Text('Personal: ${removeAcentos(nomeDoPersonal)}'));
        content.add(pw.Text('Rotina: ${removeAcentos(nomeDaRotina)}'));
        content.add(
            pw.Text('Data: ${diaDoPdf.toLocal().toString().split(' ')[0]}'));
        content.add(pw.SizedBox(height: 16));

        // Treinos e séries
        for (var treino in nomeDoTreinoList) {
          content.add(
            pw.Container(
              padding:
                  const pw.EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              color: azulEscuro,
              child: pw.Text(
                removeAcentos(treino),
                style: pw.TextStyle(
                  fontSize: 14,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.white,
                ),
              ),
            ),
          );
          content.add(pw.SizedBox(height: 8));

          final seriesDoTreino = filteredSeries
              .where((item) => item.treinos.contains(treino))
              .toList();

          if (seriesDoTreino.isEmpty) {
            content.add(pw.Text('Nenhuma serie para este treino.'));
          } else {
            content.add(
              pw.Table.fromTextArray(
                headers: [
                  'Series/Rep',
                  'Interv.',
                  'Carga',
                  'Caden.',
                  'Tempo',
                  'Veloc.',
                  'Incli.',
                  'Distan.',
                  'Pace',
                  'Obs',
                ],
                data: seriesDoTreino.map((item) {
                  return [
                    removeAcentos(item.seriesRep ?? ''),
                    removeAcentos(item.intervalo ?? ''),
                    removeAcentos(item.carga ?? ''),
                    removeAcentos(item.cadencia ?? ''),
                    removeAcentos(item.tempo ?? ''),
                    removeAcentos(item.velocidade ?? ''),
                    removeAcentos(item.inclinacao ?? ''),
                    removeAcentos(item.distancia ?? ''),
                    removeAcentos(item.pace ?? ''),
                    removeAcentos(item.obs ?? ''),
                  ];
                }).toList(),
                cellAlignment: pw.Alignment.centerLeft,
                headerStyle: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.white,
                ),
                headerDecoration: pw.BoxDecoration(color: azulEscuro),
              ),
            );
          }

          content.add(pw.SizedBox(height: 20));
        }

        return content;
      },
    ),
  );

  // Salvar o PDF no Firebase Storage
  final Uint8List pdfBytes = await pdf.save();
  final fileName = '${const Uuid().v4()}.pdf';
  final storageRef = FirebaseStorage.instance.ref().child('pdfs/$fileName');
  await storageRef.putData(pdfBytes);

  // Retorna a URL de download
  final downloadUrl = await storageRef.getDownloadURL();
  return downloadUrl;
}
