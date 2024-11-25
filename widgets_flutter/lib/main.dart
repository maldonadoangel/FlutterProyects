import 'package:flutter/material.dart';
//import 'package:widgets_flutter/screens/counter/screen_counter.dart';
import 'package:widgets_flutter/screens/counter/screen_functions_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.yellow),
      debugShowCheckedModeBanner: false,
      home: const ScreenFunctionsCounter(),
    );
  }
}
