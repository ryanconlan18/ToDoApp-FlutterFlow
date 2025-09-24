import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBBJDCUcJnYim9lRYLfB-3xLNmcjlgNgsw",
            authDomain: "todo-app-15cb5.firebaseapp.com",
            projectId: "todo-app-15cb5",
            storageBucket: "todo-app-15cb5.firebasestorage.app",
            messagingSenderId: "275581767370",
            appId: "1:275581767370:web:8ff7d443ff6f147e1eae33",
            measurementId: "G-54TCBFPDEF"));
  } else {
    await Firebase.initializeApp();
  }
}
