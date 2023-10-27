import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBCt_f3QKcKGCrSKs9A3pIKA1VDpW-zDe0",
            authDomain: "proyectoseulbarberia.firebaseapp.com",
            projectId: "proyectoseulbarberia",
            storageBucket: "proyectoseulbarberia.appspot.com",
            messagingSenderId: "424198379779",
            appId: "1:424198379779:web:4ea802435eab21d8c37136",
            measurementId: "G-FF4SRZK6GL"));
  } else {
    await Firebase.initializeApp();
  }
}
