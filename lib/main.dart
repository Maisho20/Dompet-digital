import 'package:dompet_digital/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:dompet_digital/pages/register.dart';
import 'package:dompet_digital/pages/hompage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
