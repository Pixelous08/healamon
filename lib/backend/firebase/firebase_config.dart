import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCYoYJ4DG3MIvhDrTyuQAidSc214T7Np6o",
            authDomain: "healamon-e04d1.firebaseapp.com",
            projectId: "healamon-e04d1",
            storageBucket: "healamon-e04d1.appspot.com",
            messagingSenderId: "646257729571",
            appId: "1:646257729571:web:dc51600aa12e2efe6a5196",
            measurementId: "G-8DKFNVS84Z"));
  } else {
    await Firebase.initializeApp();
  }
}
