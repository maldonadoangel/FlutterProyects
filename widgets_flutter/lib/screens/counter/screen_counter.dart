import 'package:flutter/material.dart';

class ScreenCounter extends StatefulWidget {
  const ScreenCounter({super.key});

  @override
  State<ScreenCounter> createState() => _ScreenCounterState();
}

class _ScreenCounterState extends State<ScreenCounter> {
  int contadorClicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 197, 61),
        centerTitle: true,
        title: const Text(
          'Pantalla de presentación',
          style: TextStyle(
            color: Color.fromARGB(255, 46, 25, 7),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$contadorClicks',
                style: const TextStyle(
                    fontSize: 140, fontWeight: FontWeight.w100)),
            Text('Click${contadorClicks == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 23)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Para agregar un estado al sumar los clics
          setState(() {
            contadorClicks++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
