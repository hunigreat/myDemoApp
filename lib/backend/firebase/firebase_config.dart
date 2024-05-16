import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: dotenv.env['FIREBASE_API_KEY']!,
            authDomain: dotenv.env['FIREBASE_AUTH_DOMAIN']!,
            projectId: dotenv.env['FIREBASE_PROJECT_ID']!,
            storageBucket: dotenv.env['FIREBASE_STORAGE_BUCKET']!,
            messagingSenderId: dotenv.env['FIREBASE_MESSAGEING_SENDER_ID']!,
            appId: dotenv.env['FIREBASE_APP_ID']!,
            measurementId: dotenv.env['FIREBASE_MEASUREMENT_ID']!));
  } else {
    await Firebase.initializeApp();
  }
}
