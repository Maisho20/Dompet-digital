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
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/num');
              },
              child: const Text('Go to Num Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/verifnum');
              },
              child: const Text('Go to Verifnum Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/onboard');
              },
              child: const Text('Go to Onboard Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pin');
              },
              child: const Text('Go to Pin Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ktp');
              },
              child: const Text('Go to KTP Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              },
              child: const Text('Go to After form Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/afterlogin');
              },
              child: const Text('Go to After Login Page'),
            ),
          ],
        ),
      ),
    );
  }
}
