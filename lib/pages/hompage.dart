//import material.dart
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: const Text('Go to Login Page'),
        ),
      ),
    );
  }
}