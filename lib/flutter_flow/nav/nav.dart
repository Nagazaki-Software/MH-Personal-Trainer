import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? PaginaInicialWidget()
          : PaginaDeLoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? PaginaInicialWidget()
              : PaginaDeLoginWidget(),
          routes: [
            FFRoute(
              name: CriacaoDeContasWidget.routeName,
              path: CriacaoDeContasWidget.routePath,
              builder: (context, params) => CriacaoDeContasWidget(
                usres: params.getParam(
                  'usres',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: PaginaDeLoginWidget.routeName,
              path: PaginaDeLoginWidget.routePath,
              builder: (context, params) => PaginaDeLoginWidget(),
            ),
            FFRoute(
              name: EsqueciMinhaSenhaWidget.routeName,
              path: EsqueciMinhaSenhaWidget.routePath,
              builder: (context, params) => EsqueciMinhaSenhaWidget(),
            ),
            FFRoute(
              name: CriarDadosPerfilWidget.routeName,
              path: CriarDadosPerfilWidget.routePath,
              builder: (context, params) => CriarDadosPerfilWidget(),
            ),
            FFRoute(
              name: EditarPerfisWidget.routeName,
              path: EditarPerfisWidget.routePath,
              builder: (context, params) => EditarPerfisWidget(),
            ),
            FFRoute(
              name: CriacaoDeContasPersonalTrainerWidget.routeName,
              path: CriacaoDeContasPersonalTrainerWidget.routePath,
              builder: (context, params) =>
                  CriacaoDeContasPersonalTrainerWidget(),
            ),
            FFRoute(
              name: PaginaInicialWidget.routeName,
              path: PaginaInicialWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PaginaInicialWidget(),
            ),
            FFRoute(
              name: EntrarPersonalTrainerWidget.routeName,
              path: EntrarPersonalTrainerWidget.routePath,
              builder: (context, params) => EntrarPersonalTrainerWidget(),
            ),
            FFRoute(
              name: CreateTreinoWidget.routeName,
              path: CreateTreinoWidget.routePath,
              builder: (context, params) => CreateTreinoWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: AvaliacoesPersonalWidget.routeName,
              path: AvaliacoesPersonalWidget.routePath,
              builder: (context, params) => AvaliacoesPersonalWidget(
                cliente: params.getParam(
                  'cliente',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: CreateAvaliacaoFisicaPollock1984tresdobrasWidget.routeName,
              path: CreateAvaliacaoFisicaPollock1984tresdobrasWidget.routePath,
              builder: (context, params) =>
                  CreateAvaliacaoFisicaPollock1984tresdobrasWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: TreinosProAlunoWidget.routeName,
              path: TreinosProAlunoWidget.routePath,
              builder: (context, params) => TreinosProAlunoWidget(
                cliente: params.getParam(
                  'cliente',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name:
                  CreateAvaliacaoFisicafalkner1968quatrodobrasWidget.routeName,
              path:
                  CreateAvaliacaoFisicafalkner1968quatrodobrasWidget.routePath,
              requireAuth: true,
              builder: (context, params) =>
                  CreateAvaliacaoFisicafalkner1968quatrodobrasWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: CreateAvaliacaoFisicaPollock1994setedobrasWidget.routeName,
              path: CreateAvaliacaoFisicaPollock1994setedobrasWidget.routePath,
              builder: (context, params) =>
                  CreateAvaliacaoFisicaPollock1994setedobrasWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: CreateAvaliacaoFisicasiriebronzek4dobrasWidget.routeName,
              path: CreateAvaliacaoFisicasiriebronzek4dobrasWidget.routePath,
              builder: (context, params) =>
                  CreateAvaliacaoFisicasiriebronzek4dobrasWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: CreateAvaliacaoFisicayuhasz6dobrasWidget.routeName,
              path: CreateAvaliacaoFisicayuhasz6dobrasWidget.routePath,
              builder: (context, params) =>
                  CreateAvaliacaoFisicayuhasz6dobrasWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name:
                  CreateAvaliacaoFisicapetrosk1995quatrodobrasWidget.routeName,
              path:
                  CreateAvaliacaoFisicapetrosk1995quatrodobrasWidget.routePath,
              builder: (context, params) =>
                  CreateAvaliacaoFisicapetrosk1995quatrodobrasWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: CreateAvaliacaoFisicaguedes1994tresdobrasWidget.routeName,
              path: CreateAvaliacaoFisicaguedes1994tresdobrasWidget.routePath,
              builder: (context, params) =>
                  CreateAvaliacaoFisicaguedes1994tresdobrasWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name:
                  CreateAvaliacaoFisicaguedes2dobrascriancaseadolescentesWidget
                      .routeName,
              path:
                  CreateAvaliacaoFisicaguedes2dobrascriancaseadolescentesWidget
                      .routePath,
              builder: (context, params) =>
                  CreateAvaliacaoFisicaguedes2dobrascriancaseadolescentesWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name:
                  CreateAvaliacaoFisicapenroenelsonefisher1985ecoteewilmore2medidasWidget
                      .routeName,
              path:
                  CreateAvaliacaoFisicapenroenelsonefisher1985ecoteewilmore2medidasWidget
                      .routePath,
              builder: (context, params) =>
                  CreateAvaliacaoFisicapenroenelsonefisher1985ecoteewilmore2medidasWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name:
                  CreateAvaliacaoFisicaWeltmanecolparapessoasobesas2medidasWidget
                      .routeName,
              path:
                  CreateAvaliacaoFisicaWeltmanecolparapessoasobesas2medidasWidget
                      .routePath,
              builder: (context, params) =>
                  CreateAvaliacaoFisicaWeltmanecolparapessoasobesas2medidasWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: CreateAvaliacaoFisicaInsersaomanulOuBioimpendanciaWidget
                  .routeName,
              path: CreateAvaliacaoFisicaInsersaomanulOuBioimpendanciaWidget
                  .routePath,
              builder: (context, params) =>
                  CreateAvaliacaoFisicaInsersaomanulOuBioimpendanciaWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: PasswordResetWidget.routeName,
              path: PasswordResetWidget.routePath,
              builder: (context, params) => PasswordResetWidget(),
            ),
            FFRoute(
              name: CreateTreinoCopyWidget.routeName,
              path: CreateTreinoCopyWidget.routePath,
              builder: (context, params) => CreateTreinoCopyWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                createTreinos: params.getParam(
                  'createTreinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
              ),
            ),
            FFRoute(
              name: CreUmTreinoWidget.routeName,
              path: CreUmTreinoWidget.routePath,
              builder: (context, params) => CreUmTreinoWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: PainelAdministrativoDoPersonalWidget.routeName,
              path: PainelAdministrativoDoPersonalWidget.routePath,
              builder: (context, params) =>
                  PainelAdministrativoDoPersonalWidget(
                cliente: params.getParam(
                  'cliente',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                createTreinos: params.getParam(
                  'createTreinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
              ),
            ),
            FFRoute(
              name: EditarTreinosModoAdminWidget.routeName,
              path: EditarTreinosModoAdminWidget.routePath,
              builder: (context, params) => EditarTreinosModoAdminWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: EditarTreinoWidget.routeName,
              path: EditarTreinoWidget.routePath,
              builder: (context, params) => EditarTreinoWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                treino: params.getParam(
                  'treino',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['treinors'],
                ),
              ),
            ),
            FFRoute(
              name: CreateRotinaDeTreinoCopyWidget.routeName,
              path: CreateRotinaDeTreinoCopyWidget.routePath,
              builder: (context, params) => CreateRotinaDeTreinoCopyWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                treino: params.getParam(
                  'treino',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
                tre: params.getParam<String>(
                  'tre',
                  ParamType.String,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: CreateTreinoCopy2Widget.routeName,
              path: CreateTreinoCopy2Widget.routePath,
              builder: (context, params) => CreateTreinoCopy2Widget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                createTreinos: params.getParam(
                  'createTreinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
              ),
            ),
            FFRoute(
              name: VerTreinosWidget.routeName,
              path: VerTreinosWidget.routePath,
              builder: (context, params) => VerTreinosWidget(
                user: params.getParam(
                  'user',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                createtreinos: params.getParam(
                  'createtreinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
                carga: params.getParam(
                  'carga',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: EditarAlunoWidget.routeName,
              path: EditarAlunoWidget.routePath,
              builder: (context, params) => EditarAlunoWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: CalendarioChatGPTWidget.routeName,
              path: CalendarioChatGPTWidget.routePath,
              builder: (context, params) => CalendarioChatGPTWidget(),
            ),
            FFRoute(
              name: PaginaInicialChatGPTWidget.routeName,
              path: PaginaInicialChatGPTWidget.routePath,
              builder: (context, params) => PaginaInicialChatGPTWidget(),
            ),
            FFRoute(
              name: PaginaInicialDoPersonalWidget.routeName,
              path: PaginaInicialDoPersonalWidget.routePath,
              builder: (context, params) => PaginaInicialDoPersonalWidget(),
            ),
            FFRoute(
              name: QuestinarioWidget.routeName,
              path: QuestinarioWidget.routePath,
              builder: (context, params) => QuestinarioWidget(),
            ),
            FFRoute(
              name: CompletePerfilWidget.routeName,
              path: CompletePerfilWidget.routePath,
              builder: (context, params) => CompletePerfilWidget(),
            ),
            FFRoute(
              name: AdminPageWidget.routeName,
              path: AdminPageWidget.routePath,
              builder: (context, params) => AdminPageWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: ConfiguraceosWidget.routeName,
              path: ConfiguraceosWidget.routePath,
              builder: (context, params) => ConfiguraceosWidget(),
            ),
            FFRoute(
              name: FazertreinoWidget.routeName,
              path: FazertreinoWidget.routePath,
              builder: (context, params) => FazertreinoWidget(
                createTreinos: params.getParam(
                  'createTreinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
                treinosItem: params.getParam(
                  'treinosItem',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: Avaliacoesteste1Widget.routeName,
              path: Avaliacoesteste1Widget.routePath,
              builder: (context, params) => Avaliacoesteste1Widget(),
            ),
            FFRoute(
              name: HistoricoDasAvaliacoesWidget.routeName,
              path: HistoricoDasAvaliacoesWidget.routePath,
              builder: (context, params) => HistoricoDasAvaliacoesWidget(),
            ),
            FFRoute(
              name: TodasAsAvaliacoesWidget.routeName,
              path: TodasAsAvaliacoesWidget.routePath,
              builder: (context, params) => TodasAsAvaliacoesWidget(),
            ),
            FFRoute(
              name: ConfiguracoesPersonalTrainnerWidget.routeName,
              path: ConfiguracoesPersonalTrainnerWidget.routePath,
              builder: (context, params) =>
                  ConfiguracoesPersonalTrainnerWidget(),
            ),
            FFRoute(
              name: NotificacoesWidget.routeName,
              path: NotificacoesWidget.routePath,
              builder: (context, params) => NotificacoesWidget(),
            ),
            FFRoute(
              name: AvaliacoesFisicasWidget.routeName,
              path: AvaliacoesFisicasWidget.routePath,
              builder: (context, params) => AvaliacoesFisicasWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: UltimaAvaliacaoWidget.routeName,
              path: UltimaAvaliacaoWidget.routePath,
              builder: (context, params) => UltimaAvaliacaoWidget(
                avaliacaoFisica: params.getParam(
                  'avaliacaoFisica',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'avaliacoesFisicas'],
                ),
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: TodosOsUsuariosWidget.routeName,
              path: TodosOsUsuariosWidget.routePath,
              builder: (context, params) => TodosOsUsuariosWidget(),
            ),
            FFRoute(
              name: AvaliacoesAlunoWidget.routeName,
              path: AvaliacoesAlunoWidget.routePath,
              builder: (context, params) => AvaliacoesAlunoWidget(),
            ),
            FFRoute(
              name: ResultadoAvaliacaoFisicaWidget.routeName,
              path: ResultadoAvaliacaoFisicaWidget.routePath,
              builder: (context, params) => ResultadoAvaliacaoFisicaWidget(),
            ),
            FFRoute(
              name: TodeasAsAvaliacoesWidget.routeName,
              path: TodeasAsAvaliacoesWidget.routePath,
              builder: (context, params) => TodeasAsAvaliacoesWidget(),
            ),
            FFRoute(
              name: AvaliacaoDeProgressoWidget.routeName,
              path: AvaliacaoDeProgressoWidget.routePath,
              builder: (context, params) => AvaliacaoDeProgressoWidget(
                createTreinos: params.getParam(
                  'createTreinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
              ),
            ),
            FFRoute(
              name: IniciarTreinoAlunoWidget.routeName,
              path: IniciarTreinoAlunoWidget.routePath,
              builder: (context, params) => IniciarTreinoAlunoWidget(
                createTreinos: params.getParam(
                  'createTreinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
              ),
            ),
            FFRoute(
              name: AvaliacaoOnlineFeitaWidget.routeName,
              path: AvaliacaoOnlineFeitaWidget.routePath,
              builder: (context, params) => AvaliacaoOnlineFeitaWidget(),
            ),
            FFRoute(
              name: IniciarTreinoNovoWidget.routeName,
              path: IniciarTreinoNovoWidget.routePath,
              builder: (context, params) => IniciarTreinoNovoWidget(
                createTreinos: params.getParam(
                  'createTreinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
                treino: params.getParam(
                  'treino',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: AbaDeFeedbackWidget.routeName,
              path: AbaDeFeedbackWidget.routePath,
              builder: (context, params) => AbaDeFeedbackWidget(),
            ),
            FFRoute(
              name: AvOnlineLiveWidget.routeName,
              path: AvOnlineLiveWidget.routePath,
              builder: (context, params) => AvOnlineLiveWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: CriarAvaliacaoOnlineWidget.routeName,
              path: CriarAvaliacaoOnlineWidget.routePath,
              builder: (context, params) => CriarAvaliacaoOnlineWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: AntesAvaliacaoOnlineWidget.routeName,
              path: AntesAvaliacaoOnlineWidget.routePath,
              builder: (context, params) => AntesAvaliacaoOnlineWidget(
                avaliacaoOnline: params.getParam(
                  'avaliacaoOnline',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'avaliacaoOnline'],
                ),
              ),
            ),
            FFRoute(
              name: EditarInformacaoWidget.routeName,
              path: EditarInformacaoWidget.routePath,
              builder: (context, params) => EditarInformacaoWidget(),
            ),
            FFRoute(
              name: TermosDeUsoWidget.routeName,
              path: TermosDeUsoWidget.routePath,
              builder: (context, params) => TermosDeUsoWidget(),
            ),
            FFRoute(
              name: PoliticadePrivacidadeWidget.routeName,
              path: PoliticadePrivacidadeWidget.routePath,
              builder: (context, params) => PoliticadePrivacidadeWidget(),
            ),
            FFRoute(
              name: NotificacaoAdminWidget.routeName,
              path: NotificacaoAdminWidget.routePath,
              builder: (context, params) => NotificacaoAdminWidget(),
            ),
            FFRoute(
              name: EditarUsuarioWidget.routeName,
              path: EditarUsuarioWidget.routePath,
              builder: (context, params) => EditarUsuarioWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: EditarPerfilDoPersonalWidget.routeName,
              path: EditarPerfilDoPersonalWidget.routePath,
              builder: (context, params) => EditarPerfilDoPersonalWidget(),
            ),
            FFRoute(
              name: AvPersonalizadaWidget.routeName,
              path: AvPersonalizadaWidget.routePath,
              builder: (context, params) => AvPersonalizadaWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                avPersonalizad: params.getParam(
                  'avPersonalizad',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'avaliacaoPersonalizada'],
                ),
              ),
            ),
            FFRoute(
              name: AvaliacaoPersonalizadaTWidget.routeName,
              path: AvaliacaoPersonalizadaTWidget.routePath,
              builder: (context, params) => AvaliacaoPersonalizadaTWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: AvaliacoesPersonalizadasPersonalWidget.routeName,
              path: AvaliacoesPersonalizadasPersonalWidget.routePath,
              builder: (context, params) =>
                  AvaliacoesPersonalizadasPersonalWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: AvaliacaoPersonalizadaFeitaWidget.routeName,
              path: AvaliacaoPersonalizadaFeitaWidget.routePath,
              builder: (context, params) => AvaliacaoPersonalizadaFeitaWidget(),
            ),
            FFRoute(
              name: AlunoFazeravPersonalizadaWidget.routeName,
              path: AlunoFazeravPersonalizadaWidget.routePath,
              builder: (context, params) => AlunoFazeravPersonalizadaWidget(
                avPersonalizada: params.getParam(
                  'avPersonalizada',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'avaliacaoPersonalizada'],
                ),
              ),
            ),
            FFRoute(
              name: GerenciamentodealunosWidget.routeName,
              path: GerenciamentodealunosWidget.routePath,
              builder: (context, params) => GerenciamentodealunosWidget(),
            ),
            FFRoute(
              name: ConfiguracoesNotificacoesWidget.routeName,
              path: ConfiguracoesNotificacoesWidget.routePath,
              builder: (context, params) => ConfiguracoesNotificacoesWidget(),
            ),
            FFRoute(
              name: Aaaaaaaaaaaaaaaaaaaaa1Widget.routeName,
              path: Aaaaaaaaaaaaaaaaaaaaa1Widget.routePath,
              builder: (context, params) => Aaaaaaaaaaaaaaaaaaaaa1Widget(),
            ),
            FFRoute(
              name: PlanoDeAssinaturaWidget.routeName,
              path: PlanoDeAssinaturaWidget.routePath,
              builder: (context, params) => PlanoDeAssinaturaWidget(),
            ),
            FFRoute(
              name: BemvindoAoPremiumWidget.routeName,
              path: BemvindoAoPremiumWidget.routePath,
              builder: (context, params) => BemvindoAoPremiumWidget(),
            ),
            FFRoute(
              name: MeuProgressoVAlunoWidget.routeName,
              path: MeuProgressoVAlunoWidget.routePath,
              builder: (context, params) => MeuProgressoVAlunoWidget(),
            ),
            FFRoute(
              name: ProgressodosalunosWidget.routeName,
              path: ProgressodosalunosWidget.routePath,
              builder: (context, params) => ProgressodosalunosWidget(
                user: params.getParam(
                  'user',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: MeusTreinosWidget.routeName,
              path: MeusTreinosWidget.routePath,
              builder: (context, params) => MeusTreinosWidget(),
            ),
            FFRoute(
              name: PgChatGPTWidget.routeName,
              path: PgChatGPTWidget.routePath,
              builder: (context, params) => PgChatGPTWidget(),
            ),
            FFRoute(
              name: EvolucaodecargasWidget.routeName,
              path: EvolucaodecargasWidget.routePath,
              builder: (context, params) => EvolucaodecargasWidget(
                createTreinos: params.getParam(
                  'createTreinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: FinanceiropersonalWidget.routeName,
              path: FinanceiropersonalWidget.routePath,
              builder: (context, params) => FinanceiropersonalWidget(
                user: params.getParam(
                  'user',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: FinanceiroAlunoWidget.routeName,
              path: FinanceiroAlunoWidget.routePath,
              builder: (context, params) => FinanceiroAlunoWidget(),
            ),
            FFRoute(
              name: ChatGPTTESTEWidget.routeName,
              path: ChatGPTTESTEWidget.routePath,
              builder: (context, params) => ChatGPTTESTEWidget(),
            ),
            FFRoute(
              name: ChatMHAssistenteWidget.routeName,
              path: ChatMHAssistenteWidget.routePath,
              builder: (context, params) => ChatMHAssistenteWidget(),
            ),
            FFRoute(
              name: DetalhesdotreinoWidget.routeName,
              path: DetalhesdotreinoWidget.routePath,
              builder: (context, params) => DetalhesdotreinoWidget(
                treinors: params.getParam(
                  'treinors',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['treinors'],
                ),
              ),
            ),
            FFRoute(
              name: CategoriaDosExerciciosWidget.routeName,
              path: CategoriaDosExerciciosWidget.routePath,
              builder: (context, params) => CategoriaDosExerciciosWidget(),
            ),
            FFRoute(
              name: TodososexericicosPeitoralWidget.routeName,
              path: TodososexericicosPeitoralWidget.routePath,
              builder: (context, params) => TodososexericicosPeitoralWidget(),
            ),
            FFRoute(
              name: TodososexericicosOmbroWidget.routeName,
              path: TodososexericicosOmbroWidget.routePath,
              builder: (context, params) => TodososexericicosOmbroWidget(),
            ),
            FFRoute(
              name: TodososexericicosCostasWidget.routeName,
              path: TodososexericicosCostasWidget.routePath,
              builder: (context, params) => TodososexericicosCostasWidget(),
            ),
            FFRoute(
              name: TodososexericicosBicepsWidget.routeName,
              path: TodososexericicosBicepsWidget.routePath,
              builder: (context, params) => TodososexericicosBicepsWidget(),
            ),
            FFRoute(
              name: IniciarTreinoAlunoCopyWidget.routeName,
              path: IniciarTreinoAlunoCopyWidget.routePath,
              builder: (context, params) => IniciarTreinoAlunoCopyWidget(
                createTreinos: params.getParam(
                  'createTreinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
              ),
            ),
            FFRoute(
              name: AvaliacaoPosturalNovaWidget.routeName,
              path: AvaliacaoPosturalNovaWidget.routePath,
              builder: (context, params) => AvaliacaoPosturalNovaWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: TodasasavaliacoesposturaisPersonalWidget.routeName,
              path: TodasasavaliacoesposturaisPersonalWidget.routePath,
              builder: (context, params) =>
                  TodasasavaliacoesposturaisPersonalWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: AvaliacaoPosturalNovaCopyWidget.routeName,
              path: AvaliacaoPosturalNovaCopyWidget.routePath,
              builder: (context, params) => AvaliacaoPosturalNovaCopyWidget(
                asvPostural: params.getParam(
                  'asvPostural',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'avaliacaoPostural'],
                ),
              ),
            ),
            FFRoute(
              name: HistoricodeavalicaoposturaldoalunoWidget.routeName,
              path: HistoricodeavalicaoposturaldoalunoWidget.routePath,
              builder: (context, params) =>
                  HistoricodeavalicaoposturaldoalunoWidget(),
            ),
            FFRoute(
              name: CriarGrupoDeTreinoWidget.routeName,
              path: CriarGrupoDeTreinoWidget.routePath,
              builder: (context, params) => CriarGrupoDeTreinoWidget(),
            ),
            FFRoute(
              name: LinkdeafiliacaoWidget.routeName,
              path: LinkdeafiliacaoWidget.routePath,
              builder: (context, params) => LinkdeafiliacaoWidget(
                personal: params.getParam(
                  'personal',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: GrupodetreinosWidget.routeName,
              path: GrupodetreinosWidget.routePath,
              builder: (context, params) => GrupodetreinosWidget(),
            ),
            FFRoute(
              name: CriarGrupoDeTreinoCopyWidget.routeName,
              path: CriarGrupoDeTreinoCopyWidget.routePath,
              builder: (context, params) => CriarGrupoDeTreinoCopyWidget(
                grupodetreinos: params.getParam(
                  'grupodetreinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'grupo_de_gerenciamentos'],
                ),
              ),
            ),
            FFRoute(
              name: ArquivodoalunoWidget.routeName,
              path: ArquivodoalunoWidget.routePath,
              builder: (context, params) => ArquivodoalunoWidget(
                user: params.getParam(
                  'user',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: TreinosaerobicosWidget.routeName,
              path: TreinosaerobicosWidget.routePath,
              builder: (context, params) => TreinosaerobicosWidget(
                cliente: params.getParam(
                  'cliente',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: ResultadodaavaliacaopersonalizadaWidget.routeName,
              path: ResultadodaavaliacaopersonalizadaWidget.routePath,
              builder: (context, params) =>
                  ResultadodaavaliacaopersonalizadaWidget(
                user: params.getParam(
                  'user',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: EnviardocumentosalunosWidget.routeName,
              path: EnviardocumentosalunosWidget.routePath,
              builder: (context, params) => EnviardocumentosalunosWidget(),
            ),
            FFRoute(
              name: TreinoaerobicoWidget.routeName,
              path: TreinoaerobicoWidget.routePath,
              builder: (context, params) => TreinoaerobicoWidget(
                cliente: params.getParam(
                  'cliente',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                aerobico: params.getParam(
                  'aerobico',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'aerobico'],
                ),
              ),
            ),
            FFRoute(
              name: AerobicoWidget.routeName,
              path: AerobicoWidget.routePath,
              builder: (context, params) => AerobicoWidget(),
            ),
            FFRoute(
              name: AerobicoCopyWidget.routeName,
              path: AerobicoCopyWidget.routePath,
              builder: (context, params) => AerobicoCopyWidget(
                aerobico: params.getParam(
                  'aerobico',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'aerobico'],
                ),
              ),
            ),
            FFRoute(
              name: ExercicioscadastradosWidget.routeName,
              path: ExercicioscadastradosWidget.routePath,
              builder: (context, params) => ExercicioscadastradosWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                treinos: params.getParam(
                  'treinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
              ),
            ),
            FFRoute(
              name: CreateTreinoCopyCopyWidget.routeName,
              path: CreateTreinoCopyCopyWidget.routePath,
              builder: (context, params) => CreateTreinoCopyCopyWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                treinors: params.getParam(
                  'treinors',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['treinors'],
                ),
                treinos: params.getParam(
                  'treinos',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'createTreinos'],
                ),
              ),
            ),
            FFRoute(
              name: VisualizarodcumentoWidget.routeName,
              path: VisualizarodcumentoWidget.routePath,
              builder: (context, params) => VisualizarodcumentoWidget(
                document: params.getParam(
                  'document',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users', 'arquivos'],
                ),
              ),
            ),
            FFRoute(
              name: AbaDeFeedbackCopyWidget.routeName,
              path: AbaDeFeedbackCopyWidget.routePath,
              builder: (context, params) => AbaDeFeedbackCopyWidget(),
            ),
            FFRoute(
              name: AdmindashboardWidget.routeName,
              path: AdmindashboardWidget.routePath,
              builder: (context, params) => AdmindashboardWidget(),
            ),
            FFRoute(
              name: PaginadetermosepoliticasWidget.routeName,
              path: PaginadetermosepoliticasWidget.routePath,
              builder: (context, params) => PaginadetermosepoliticasWidget(),
            ),
            FFRoute(
              name: PaginaDeCentralDeAjudaWidget.routeName,
              path: PaginaDeCentralDeAjudaWidget.routePath,
              builder: (context, params) => PaginaDeCentralDeAjudaWidget(),
            ),
            FFRoute(
              name: TreinosArquivadosWidget.routeName,
              path: TreinosArquivadosWidget.routePath,
              builder: (context, params) => TreinosArquivadosWidget(
                users: params.getParam(
                  'users',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: DeletarcontaWidget.routeName,
              path: DeletarcontaWidget.routePath,
              builder: (context, params) => DeletarcontaWidget(),
            ),
            FFRoute(
              name: DetalhesdaassintauraWidget.routeName,
              path: DetalhesdaassintauraWidget.routePath,
              builder: (context, params) => DetalhesdaassintauraWidget(),
            ),
            FFRoute(
              name: AlterarSenhaWidget.routeName,
              path: AlterarSenhaWidget.routePath,
              builder: (context, params) => AlterarSenhaWidget(),
            ),
            FFRoute(
              name: ComocancelarassinaturaWidget.routeName,
              path: ComocancelarassinaturaWidget.routePath,
              builder: (context, params) => ComocancelarassinaturaWidget(),
            ),
            FFRoute(
              name: ComoCriarUmTreinoParaOAlunoWidget.routeName,
              path: ComoCriarUmTreinoParaOAlunoWidget.routePath,
              builder: (context, params) => ComoCriarUmTreinoParaOAlunoWidget(),
            ),
            FFRoute(
              name: ComecandoNoMHWidget.routeName,
              path: ComecandoNoMHWidget.routePath,
              builder: (context, params) => ComecandoNoMHWidget(),
            ),
            FFRoute(
              name: ComocriarumaavaliacaoWidget.routeName,
              path: ComocriarumaavaliacaoWidget.routePath,
              builder: (context, params) => ComocriarumaavaliacaoWidget(),
            ),
            FFRoute(
              name: ConversaChatWidget.routeName,
              path: ConversaChatWidget.routePath,
              builder: (context, params) => ConversaChatWidget(
                conversa: params.getParam(
                  'conversa',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['conversa'],
                ),
              ),
            ),
            FFRoute(
              name: MhagendafitWidget.routeName,
              path: MhagendafitWidget.routePath,
              builder: (context, params) => MhagendafitWidget(),
            ),
            FFRoute(
              name: ServicePageWidget.routeName,
              path: ServicePageWidget.routePath,
              builder: (context, params) => ServicePageWidget(),
            ),
            FFRoute(
              name: ProfiledopersonalWidget.routeName,
              path: ProfiledopersonalWidget.routePath,
              builder: (context, params) => ProfiledopersonalWidget(
                user: params.getParam(
                  'user',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: EditiProfileWidget.routeName,
              path: EditiProfileWidget.routePath,
              builder: (context, params) => EditiProfileWidget(),
            ),
            FFRoute(
              name: VeriicarcontaWidget.routeName,
              path: VeriicarcontaWidget.routePath,
              builder: (context, params) => VeriicarcontaWidget(
                time: params.getParam(
                  'time',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: AgendamentosWidget.routeName,
              path: AgendamentosWidget.routePath,
              builder: (context, params) => AgendamentosWidget(),
            ),
            FFRoute(
              name: EditarperfilWidget.routeName,
              path: EditarperfilWidget.routePath,
              builder: (context, params) => EditarperfilWidget(
                time: params.getParam(
                  'time',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: AdesaomhfitWidget.routeName,
              path: AdesaomhfitWidget.routePath,
              builder: (context, params) => AdesaomhfitWidget(),
            ),
            FFRoute(
              name: AvaliacoespropersonalWidget.routeName,
              path: AvaliacoespropersonalWidget.routePath,
              builder: (context, params) => AvaliacoespropersonalWidget(),
            ),
            FFRoute(
              name: TicketsupportWidget.routeName,
              path: TicketsupportWidget.routePath,
              builder: (context, params) => TicketsupportWidget(),
            ),
            FFRoute(
              name: BaixenossoappWidget.routeName,
              path: BaixenossoappWidget.routePath,
              builder: (context, params) => BaixenossoappWidget(),
            ),
            FFRoute(
              name: ImagemAnaliseIaWidget.routeName,
              path: ImagemAnaliseIaWidget.routePath,
              builder: (context, params) => ImagemAnaliseIaWidget(),
            ),
            FFRoute(
              name: FeedbackIAWidget.routeName,
              path: FeedbackIAWidget.routePath,
              builder: (context, params) => FeedbackIAWidget(),
            ),
            FFRoute(
              name: BaixenossoappCopyWidget.routeName,
              path: BaixenossoappCopyWidget.routePath,
              builder: (context, params) => BaixenossoappCopyWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/paginaDeLogin';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
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
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
