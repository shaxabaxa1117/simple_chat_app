import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:simple_chat_app/services/auth/auth_gate.dart';
import 'package:simple_chat_app/services/auth/login_or_register.dart';
import 'package:simple_chat_app/consts/firebase_options.dart';

import 'package:simple_chat_app/theme/light_mode.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      home: const AuthGate(),
      
    );
  }
}
