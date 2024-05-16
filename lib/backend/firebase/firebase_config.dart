import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCTjZmeJy87iF7uFWOJdtwCs_T1f3FNpYM",
            authDomain: "my-demo-app-dev-9f4c3.firebaseapp.com",
            projectId: "my-demo-app-dev-9f4c3",
            storageBucket: "my-demo-app-dev-9f4c3.appspot.com",
            messagingSenderId: "959906693380",
            appId: "1:959906693380:web:343be5e699d735b0b85051",
            measurementId: "G-EJBQ5PM0E0"));
  } else {
    await Firebase.initializeApp();
  }
}
