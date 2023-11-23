import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Go to Login Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: const Text('Go to Register Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profil');
              },
              child: const Text('Go to Profil Page'),
                Navigator.pushNamed(context, '/onboard');
              },
              child: const Text('Go to Onboard Page'),
            ),
          ],
        ),
      ),
    );
  }
}
