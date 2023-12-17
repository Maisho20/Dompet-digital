import 'package:dompet_digital/pages/login.dart';
import 'package:dompet_digital/pages/onboard.dart';
import 'package:dompet_digital/pages/pin.dart';
import 'package:flutter/material.dart';
import 'package:dompet_digital/pages/register.dart';
import 'package:dompet_digital/pages/hompage.dart';
import 'package:dompet_digital/pages/profil.dart';
import 'package:dompet_digital/pages/num.dart';
import 'package:dompet_digital/pages/verifnum.dart';
import 'package:dompet_digital/pages/ktp.dart';
import 'package:dompet_digital/pages/afterLogin.dart';
import 'package:dompet_digital/pages/form_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue, useMaterial3: false),
      initialRoute: '/',
      routes: {
        '/': (context) => const homepage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/profil': (context) => const Profil(),
        '/num': (context) => const Num(),
        '/verifnum': (context) => const Verifnum(),
        '/onboard': (context) => OnboardPage(),
        '/pin': (context) => Pincode(),
        '/ktp': (context) => const ktpPage(
              NIK: '',
              Nama: '',
              TTL: '',
              Alamat: '',
            ),
        '/form': (context) => const formPage(
              NIK: '',
              Nama: '',
              TTL: '',
              Alamat: '',
              ocrResult: '',
            ),
        '/afterlogin': (context) => const afterLogin(),
      },
    );
  }
}
