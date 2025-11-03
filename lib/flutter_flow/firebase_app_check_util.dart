import 'package:firebase_app_check/firebase_app_check.dart';

Future initializeFirebaseAppCheck() => FirebaseAppCheck.instance.activate(
      webProvider: ReCaptchaEnterpriseProvider(
          '6LeSvkkrAAAAABoepIiI2TY5ZSEml2TqiVyC4cHH'),
      androidProvider: AndroidProvider.playIntegrity,
      appleProvider: AppleProvider.deviceCheck,
    );
