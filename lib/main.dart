import 'package:dompet_digital/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:dompet_digital/pages/register.dart';
import 'package:dompet_digital/pages/hompage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const homepage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
