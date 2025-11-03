import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAOacFgUL2w9WYNOnuLPC0w2qFebdy2d64",
            authDomain: "profissions-2746d.firebaseapp.com",
            projectId: "profissions-2746d",
            storageBucket: "profissions-2746d.appspot.com",
            messagingSenderId: "733790875876",
            appId: "1:733790875876:web:57d4a8a1271e8bfec53cf1",
            measurementId: "G-TX29X2CZTT"));
  } else {
    await Firebase.initializeApp();
  }
}
