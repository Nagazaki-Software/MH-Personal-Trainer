import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? isWeb
          ? Container()
          : Container(
              color: FlutterFlowTheme.of(context).secondary,
              child: Center(
                child: Image.asset(
                  'assets/images/y_(1).gif',
                  width: MediaQuery.sizeOf(context).width * 0.95,
                  fit: BoxFit.contain,
                ),
              ),
            )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'CriacaoDeContas': (data) async => ParameterData(
        allParams: {
          'usres': getParameter<DocumentReference>(data, 'usres'),
        },
      ),
  'PaginaDeLogin': ParameterData.none(),
  'EsqueciMinhaSenha': ParameterData.none(),
  'CriarDadosPerfil': ParameterData.none(),
  'EditarPerfis': ParameterData.none(),
  'CriacaoDeContasPersonalTrainer': ParameterData.none(),
  'PaginaInicial': ParameterData.none(),
  'EntrarPersonalTrainer': ParameterData.none(),
  'CreateTreino': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'avaliacoesPersonal': (data) async => ParameterData(
        allParams: {
          'cliente': getParameter<DocumentReference>(data, 'cliente'),
        },
      ),
  'createAvaliacaoFisicaPollock1984tresdobras': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'treinosProAluno': (data) async => ParameterData(
        allParams: {
          'cliente': getParameter<DocumentReference>(data, 'cliente'),
        },
      ),
  'createAvaliacaoFisicafalkner1968quatrodobras': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'createAvaliacaoFisicaPollock1994setedobras': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'createAvaliacaoFisicasiriebronzek4dobras': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'createAvaliacaoFisicayuhasz6dobras': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'createAvaliacaoFisicapetrosk1995quatrodobras': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'createAvaliacaoFisicaguedes1994tresdobras': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'createAvaliacaoFisicaguedes2dobrascriancaseadolescentes': (data) async =>
      ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'createAvaliacaoFisicapenroenelsonefisher1985ecoteewilmore2medidas':
      (data) async => ParameterData(
            allParams: {
              'users': getParameter<DocumentReference>(data, 'users'),
            },
          ),
  'createAvaliacaoFisicaWeltmanecolparapessoasobesas2medidas': (data) async =>
      ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'createAvaliacaoFisicaInsersaomanulOuBioimpendancia': (data) async =>
      ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'passwordReset': ParameterData.none(),
  'CreateTreinoCopy': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
          'createTreinos':
              getParameter<DocumentReference>(data, 'createTreinos'),
        },
      ),
  'CreUmTreino': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'PainelAdministrativoDoPersonal': (data) async => ParameterData(
        allParams: {
          'cliente': getParameter<DocumentReference>(data, 'cliente'),
          'createTreinos':
              getParameter<DocumentReference>(data, 'createTreinos'),
        },
      ),
  'EditarTreinosModoAdmin': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'EditarTreino': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
          'treino': getParameter<DocumentReference>(data, 'treino'),
        },
      ),
  'CreateRotinaDeTreinoCopy': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
          'treino': getParameter<DocumentReference>(data, 'treino'),
        },
      ),
  'CreateTreinoCopy2': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
          'createTreinos':
              getParameter<DocumentReference>(data, 'createTreinos'),
        },
      ),
  'VerTreinos': (data) async => ParameterData(
        allParams: {
          'user': getParameter<DocumentReference>(data, 'user'),
          'createtreinos':
              getParameter<DocumentReference>(data, 'createtreinos'),
          'carga': getParameter<String>(data, 'carga'),
        },
      ),
  'editarAluno': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'calendarioChatGPT': ParameterData.none(),
  'paginaInicialChatGPT': ParameterData.none(),
  'paginaInicialDoPersonal': ParameterData.none(),
  'questinario': ParameterData.none(),
  'completePerfil': ParameterData.none(),
  'adminPage': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'configuraceos': ParameterData.none(),
  'fazertreino': (data) async => ParameterData(
        allParams: {
          'createTreinos':
              getParameter<DocumentReference>(data, 'createTreinos'),
          'treinosItem': getParameter<String>(data, 'treinosItem'),
        },
      ),
  'avaliacoesteste1': ParameterData.none(),
  'historicoDasAvaliacoes': ParameterData.none(),
  'todasAsAvaliacoes': ParameterData.none(),
  'configuracoesPersonalTrainner': ParameterData.none(),
  'notificacoes': ParameterData.none(),
  'avaliacoesFisicas': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'ultimaAvaliacao': (data) async => ParameterData(
        allParams: {
          'avaliacaoFisica':
              getParameter<DocumentReference>(data, 'avaliacaoFisica'),
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'todosOsUsuarios': ParameterData.none(),
  'avaliacoesAluno': ParameterData.none(),
  'resultadoAvaliacaoFisica': ParameterData.none(),
  'todeasAsAvaliacoes': ParameterData.none(),
  'avaliacaoDeProgresso': (data) async => ParameterData(
        allParams: {
          'createTreinos':
              getParameter<DocumentReference>(data, 'createTreinos'),
        },
      ),
  'iniciarTreinoAluno': (data) async => ParameterData(
        allParams: {
          'createTreinos':
              getParameter<DocumentReference>(data, 'createTreinos'),
        },
      ),
  'avaliacaoOnlineFeita': ParameterData.none(),
  'iniciarTreinoNovo': (data) async => ParameterData(
        allParams: {
          'createTreinos':
              getParameter<DocumentReference>(data, 'createTreinos'),
          'treino': getParameter<String>(data, 'treino'),
        },
      ),
  'abaDeFeedback': ParameterData.none(),
  'avOnlineLive': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'criarAvaliacaoOnline': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'antesAvaliacaoOnline': (data) async => ParameterData(
        allParams: {
          'avaliacaoOnline':
              getParameter<DocumentReference>(data, 'avaliacaoOnline'),
        },
      ),
  'editarInformacao': ParameterData.none(),
  'termosDeUso': ParameterData.none(),
  'politicadePrivacidade': ParameterData.none(),
  'notificacaoAdmin': ParameterData.none(),
  'editarUsuario': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'editarPerfilDoPersonal': ParameterData.none(),
  'avPersonalizada': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
          'avPersonalizad':
              getParameter<DocumentReference>(data, 'avPersonalizad'),
        },
      ),
  'avaliacaoPersonalizadaT': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'avaliacoesPersonalizadasPersonal': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'avaliacaoPersonalizadaFeita': ParameterData.none(),
  'AlunoFazeravPersonalizada': (data) async => ParameterData(
        allParams: {
          'avPersonalizada':
              getParameter<DocumentReference>(data, 'avPersonalizada'),
        },
      ),
  'gerenciamentodealunos': ParameterData.none(),
  'configuracoesNotificacoes': ParameterData.none(),
  'aaaaaaaaaaaaaaaaaaaaa1': ParameterData.none(),
  'planoDeAssinatura': ParameterData.none(),
  'bemvindoAoPremium': ParameterData.none(),
  'meuProgressoVAluno': ParameterData.none(),
  'progressodosalunos': (data) async => ParameterData(
        allParams: {
          'user': getParameter<DocumentReference>(data, 'user'),
        },
      ),
  'meusTreinos': ParameterData.none(),
  'pgChatGPT': ParameterData.none(),
  'evolucaodecargas': (data) async => ParameterData(
        allParams: {
          'createTreinos':
              getParameter<DocumentReference>(data, 'createTreinos'),
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'FINANCEIROPERSONAL': (data) async => ParameterData(
        allParams: {
          'user': getParameter<DocumentReference>(data, 'user'),
        },
      ),
  'FinanceiroAluno': ParameterData.none(),
  'chatGPTTESTE': ParameterData.none(),
  'chatMHAssistente': ParameterData.none(),
  'detalhesdotreino': (data) async => ParameterData(
        allParams: {
          'treinors': getParameter<DocumentReference>(data, 'treinors'),
        },
      ),
  'categoriaDosExercicios': ParameterData.none(),
  'todososexericicosPeitoral': ParameterData.none(),
  'todososexericicosOmbro': ParameterData.none(),
  'todososexericicosCostas': ParameterData.none(),
  'todososexericicosBiceps': ParameterData.none(),
  'iniciarTreinoAlunoCopy': (data) async => ParameterData(
        allParams: {
          'createTreinos':
              getParameter<DocumentReference>(data, 'createTreinos'),
        },
      ),
  'avaliacaoPosturalNova': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'todasasavaliacoesposturaisPersonal': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'avaliacaoPosturalNovaCopy': (data) async => ParameterData(
        allParams: {
          'asvPostural': getParameter<DocumentReference>(data, 'asvPostural'),
        },
      ),
  'historicodeavalicaoposturaldoaluno': ParameterData.none(),
  'criarGrupoDeTreino': ParameterData.none(),
  'linkdeafiliacao': (data) async => ParameterData(
        allParams: {
          'personal': getParameter<String>(data, 'personal'),
        },
      ),
  'grupodetreinos': ParameterData.none(),
  'criarGrupoDeTreinoCopy': (data) async => ParameterData(
        allParams: {
          'grupodetreinos':
              getParameter<DocumentReference>(data, 'grupodetreinos'),
        },
      ),
  'arquivodoaluno': (data) async => ParameterData(
        allParams: {
          'user': getParameter<DocumentReference>(data, 'user'),
        },
      ),
  'treinosaerobicos': (data) async => ParameterData(
        allParams: {
          'cliente': getParameter<DocumentReference>(data, 'cliente'),
        },
      ),
  'resultadodaavaliacaopersonalizada': (data) async => ParameterData(
        allParams: {
          'user': getParameter<DocumentReference>(data, 'user'),
        },
      ),
  'enviardocumentosalunos': ParameterData.none(),
  'treinoaerobico': (data) async => ParameterData(
        allParams: {
          'cliente': getParameter<DocumentReference>(data, 'cliente'),
          'aerobico': getParameter<DocumentReference>(data, 'aerobico'),
        },
      ),
  'aerobico': ParameterData.none(),
  'aerobicoCopy': (data) async => ParameterData(
        allParams: {
          'aerobico': getParameter<DocumentReference>(data, 'aerobico'),
        },
      ),
  'exercicioscadastrados': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
          'treinos': getParameter<DocumentReference>(data, 'treinos'),
        },
      ),
  'CreateTreinoCopyCopy': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
          'treinors': getParameter<DocumentReference>(data, 'treinors'),
          'treinos': getParameter<DocumentReference>(data, 'treinos'),
        },
      ),
  'visualizarodcumento': (data) async => ParameterData(
        allParams: {
          'document': getParameter<DocumentReference>(data, 'document'),
        },
      ),
  'abaDeFeedbackCopy': ParameterData.none(),
  'admindashboard': ParameterData.none(),
  'paginadetermosepoliticas': ParameterData.none(),
  'PaginaDeCentralDeAjuda': ParameterData.none(),
  'treinosArquivados': (data) async => ParameterData(
        allParams: {
          'users': getParameter<DocumentReference>(data, 'users'),
        },
      ),
  'deletarconta': ParameterData.none(),
  'detalhesdaassintaura': ParameterData.none(),
  'alterarSenha': ParameterData.none(),
  'comocancelarassinatura': ParameterData.none(),
  'comoCriarUmTreinoParaOAluno': ParameterData.none(),
  'comecandoNoMH': ParameterData.none(),
  'comocriarumaavaliacao': ParameterData.none(),
  'conversaChat': (data) async => ParameterData(
        allParams: {
          'conversa': getParameter<DocumentReference>(data, 'conversa'),
        },
      ),
  'mhagendafit': ParameterData.none(),
  'servicePage': ParameterData.none(),
  'profiledopersonal': (data) async => ParameterData(
        allParams: {
          'user': getParameter<DocumentReference>(data, 'user'),
        },
      ),
  'editiProfile': ParameterData.none(),
  'veriicarconta': (data) async => ParameterData(
        allParams: {
          'time': getParameter<String>(data, 'time'),
        },
      ),
  'agendamentos': ParameterData.none(),
  'editarperfil': (data) async => ParameterData(
        allParams: {
          'time': getParameter<String>(data, 'time'),
        },
      ),
  'adesaomhfit': ParameterData.none(),
  'avaliacoespropersonal': ParameterData.none(),
  'ticketsupport': ParameterData.none(),
  'baixenossoapp': ParameterData.none(),
  'imagemAnaliseIa': ParameterData.none(),
  'feedbackIA': ParameterData.none(),
  'baixenossoappCopy': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
