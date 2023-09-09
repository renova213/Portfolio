import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/views/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAvfwRYK6LERlKsYfgPrM2eKWdCRpZATQc",
      authDomain: "portfolio-9fa6a.firebaseapp.com",
      projectId: "portfolio-9fa6a",
      storageBucket: "portfolio-9fa6a.appspot.com",
      messagingSenderId: "934938431158",
      appId: "1:934938431158:web:2ac7a90f4cb5f1f5106017",
      measurementId: "G-W03VWE4TFK",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
