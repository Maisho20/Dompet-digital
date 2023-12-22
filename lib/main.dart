import 'package:dompet_digital/firebase_options.dart';
import 'package:dompet_digital/pages/login.dart';
import 'package:dompet_digital/pages/onboard.dart';
import 'package:dompet_digital/pages/pin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dompet_digital/pages/register.dart';
import 'package:dompet_digital/pages/num.dart';
import 'package:dompet_digital/pages/verifnum.dart';
import 'package:dompet_digital/pages/ktp.dart';
import 'package:dompet_digital/pages/afterLogin.dart';
import 'package:dompet_digital/pages/form_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue, useMaterial3: false),
      initialRoute: '/',
      routes: {
        // '/': (context) => const homepage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/num': (context) => const Num(),
        '/verifnum': (context) => const Verifnum(),
        '/': (context) => OnboardPage(),
        '/pin': (context) => Pincode(),
        '/ktp': (context) => ktpPage(),
        '/form': (context) => formPage(),
        '/afterlogin': (context) => const afterLogin(),
      },
    );
  }
}
