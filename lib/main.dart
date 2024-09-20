import 'package:flutter/material.dart';
import 'package:gabriel_str/pages/cadastro.dart';
import 'package:gabriel_str/pages/cadastro1.dart';
import 'package:gabriel_str/pages/login.dart';
import 'package:gabriel_str/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => const Login(),
        '/cadastro' : (context) => const Cadastro(),
        '/home' : (context) => const Home(),
      },
    );
  }
}

