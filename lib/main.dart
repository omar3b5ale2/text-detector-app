import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:textdetection/features/auth/view/pages/login_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  runApp(const MyApp());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(
    (value) {
      print("Firebase.initialized");
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Detection',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const SplashScreen(),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
