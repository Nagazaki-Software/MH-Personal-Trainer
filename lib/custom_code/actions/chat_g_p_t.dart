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

import 'package:pdf/widgets.dart';
import 'package:html/dom.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';

// Função para verificar se a mensagem é relacionada a um pedido de treino
bool isTreinoRequest(String mensagem) {
  List<String> palavrasChave = [
    "treino de musculação",
    "ganho de massa muscular",
    "aumentar a força no peito",
    "plano de treino para pernas",
    "treino de costas e bíceps",
    "definição muscular",
    "rotina de treino para hipertrofia",
    "treino para emagrecimento",
    "melhorar a resistência muscular",
    "agachamento para aumentar os glúteos",
    "aumentar a massa muscular nas pernas",
    "fortalecer o core",
    "aumentar o tamanho do bíceps",
    "treino para iniciantes",
    "definir o corpo todo",
    "ganhar força nos ombros",
    "treinamento de levantamento terra",
    "aumentar o volume do peito",
    "melhorar o condicionamento físico",
    "treinar tríceps e peito",
    "aumentar a resistência no treino de cardio",
    "força e definição muscular",
    "treino de resistência e força para pernas",
    "treino de academia para glúteos e coxas",
    "treino de alta intensidade para queimar gordura",
    "força e definição na musculação",
    "treino de academia para aumento de massa muscular",
    "treino funcional para musculação",
    "exercício de musculação para o corpo todo"
  ];

  for (var palavra in palavrasChave) {
    if (mensagem.toLowerCase().contains(palavra.toLowerCase())) {
      return true;
    }
  }
  return false;
}

// Função para salvar o treino no Firestore automaticamente
Future<void> salvarTreinoNoFirestore(
    DocumentReference createTreinos, Map<String, dynamic> treinoGerado) async {
  try {
    if (treinoGerado['nomeDoTreino'] == null ||
        treinoGerado['treino'] == null) {
      print("Erro: Dados do treino incompletos.");
      return;
    }

    await createTreinos.set({
      'nomeDoTreino': treinoGerado['nomeDoTreino'] ?? '',
      'obsInstrucao': treinoGerado['obsInstrucao'] ?? '',
      'diaDoTreino': treinoGerado['diaDoTreino'] ?? '',
      'comecaEmDaRotina': treinoGerado['comecaEmDaRotina'] ?? '',
      'terminaEmDaRotina': treinoGerado['terminaEmDaRotina'] ?? '',
      'treino': List<String>.from(treinoGerado['treino'] ?? []),
      'dificuldadeDaRotina': treinoGerado['dificuldadeDaRotina'] ?? '',
      'objetivoDaRotina': treinoGerado['objetivoDaRotina'] ?? '',
    });

    print("Treino criado e salvo com sucesso.");
  } catch (e) {
    print("Erro ao salvar treino no Firestore: $e");
  }
}

// Função para procurar um treino na lista de treinos (listTreinos)
Map<String, dynamic> procurarTreinoNaLista(
    List<TreinorsRecord> listTreinos, String tipoDeTreino) {
  for (var treino in listTreinos) {
    if (treino.treinosNoLIst.toLowerCase() == tipoDeTreino.toLowerCase()) {
      return {
        'nomeDoTreino': treino.treinosNoLIst,
      };
    }
  }
  return {}; // Retorna um mapa vazio caso não encontre um treino correspondente
}

// Histórico de mensagens
List<Map<String, dynamic>> historicoConversas = [];

// Função para interagir com o ChatGPT
Future<dynamic> chatGPT(
  String apiKey,
  String mensagem,
  List<TreinorsRecord> listTreinos,
  DocumentReference createTreinos,
) async {
  // Adiciona a mensagem do usuário ao histórico
  historicoConversas.add({'role': 'user', 'content': mensagem});

  // Prepara o contexto de conversação, incluindo o histórico de mensagens
  final data = {
    'model': 'gpt-4o-mini',
    'messages': historicoConversas,
  };

  final headers = {
    'Authorization': 'Bearer $apiKey',
    'Content-Type': 'application/json',
  };

  try {
    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: headers,
      body: json.encode(data),
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);

      if (jsonResponse.containsKey('choices') &&
          jsonResponse['choices'].isNotEmpty) {
        final conteudoResposta =
            jsonResponse['choices'][0]['message']['content'];

        // Verifica se a mensagem está relacionada a um pedido de treino
        if (isTreinoRequest(mensagem)) {
          String tipoDeTreino = '';

          if (mensagem.contains('hipertrofia')) {
            tipoDeTreino = "hipertrofia";
          } else if (mensagem.contains('emagrecimento')) {
            tipoDeTreino = "emagrecimento";
          } else if (mensagem.contains('força')) {
            tipoDeTreino = "força";
          }

          Map<String, dynamic> treinoGerado =
              procurarTreinoNaLista(listTreinos, tipoDeTreino);

          if (treinoGerado.isEmpty) {
            treinoGerado = {
              'nomeDoTreino': 'Treino não encontrado',
              'obsInstrucao': 'Não conseguimos encontrar um treino adequado.',
              'diaDoTreino': '',
              'comecaEmDaRotina': '',
              'terminaEmDaRotina': '',
              'treino': [],
              'dificuldadeDaRotina': '',
              'objetivoDaRotina': '',
            };
          }

          final createTreinosRef =
              FirebaseFirestore.instance.collection('createTreinos').doc();

          await salvarTreinoNoFirestore(createTreinosRef, treinoGerado);

          historicoConversas.add({
            'role': 'assistant',
            'content': 'Aqui está seu treino: ${treinoGerado['nomeDoTreino']}',
          });

          return {
            'respostaChatGPT': conteudoResposta,
            'treinoGerado': treinoGerado,
          };
        } else {
          historicoConversas
              .add({'role': 'assistant', 'content': conteudoResposta});
          return conteudoResposta;
        }
      } else {
        throw Exception('Resposta inválida da API: "choices" não encontrado.');
      }
    } else {
      throw Exception('Falha na requisição: ${response.statusCode}');
    }
  } catch (e) {
    print("Erro ao comunicar com a API do ChatGPT: $e");
    return {'respostaChatGPT': 'Erro na comunicação com a API.'};
  }
}
