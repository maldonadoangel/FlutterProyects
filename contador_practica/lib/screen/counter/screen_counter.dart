import 'package:flutter/material.dart';

class ScreenCounter extends StatelessWidget {
  const ScreenCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 23, 47),
        title: const Text(
          'Contador',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
