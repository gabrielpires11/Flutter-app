import 'package:flutter/material.dart';
import 'package:gabriel_str/pages/cadastro.dart';
import 'package:gabriel_str/pages/login.dart';
import 'package:gabriel_str/pages/home.dart';
import 'package:gabriel_str/pages/splash_screen.dart';
import 'package:gabriel_str/shared/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        fontFamily: MyFonts.fontPrimary,
        colorScheme: ColorScheme.fromSeed(seedColor: MyColors.azulEscuro),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/cadastro' : (context) => const Cadastro(),
        '/home' : (context) => const Home(),
      },
    );
  }
}

