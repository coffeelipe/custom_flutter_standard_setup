// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Clam Project';

  @override
  String welcomeMessage(String userName) {
    return 'Olá, $userName!';
  }

  @override
  String get loginTitle => 'Entrar';

  @override
  String get registerTitle => 'Criar Conta';

  @override
  String get emailLabel => 'Email';

  @override
  String get passwordLabel => 'Senha';

  @override
  String get confirmPasswordLabel => 'Confirmar Senha';

  @override
  String get forgotPassword => 'Esqueci minha senha';

  @override
  String get loginButton => 'Entrar';

  @override
  String get signupButton => 'Cadastrar';

  @override
  String get logoutButton => 'Sair';

  @override
  String get homeTitle => 'Home';

  @override
  String get loadingMessage => 'Carregando...';

  @override
  String get errorMessage => 'Algo deu errado. Por favor tente novamente.';
}
