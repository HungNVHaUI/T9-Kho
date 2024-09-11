import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDsZSaPsPpSEBiG6liGsp9VE8d0vXt0fXA",
            authDomain: "t9-kho-59krd5.firebaseapp.com",
            projectId: "t9-kho-59krd5",
            storageBucket: "t9-kho-59krd5.appspot.com",
            messagingSenderId: "343464164746",
            appId: "1:343464164746:web:83d8722ddbb66f72fbdc73"));
  } else {
    await Firebase.initializeApp();
  }
}
