import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'home_screen.dart';

Future<void> main() async {

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Resume App",
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          background: Colors.grey.shade300,
          primary: Colors.grey.shade500,
          secondary: Colors.green,
          tertiary: Colors.white,
          inversePrimary: Colors.red.shade200
        )
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

