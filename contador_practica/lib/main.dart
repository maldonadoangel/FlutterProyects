import 'package:contador_practica/screen/counter/screen_counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color.fromARGB(255, 165, 39, 30)),
      debugShowCheckedModeBanner: false,
      home: const ScreenCounter(),
    );
  }
}
