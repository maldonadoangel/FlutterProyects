import 'package:flutter/material.dart';

class ScreenCounter extends StatefulWidget {
  const ScreenCounter({super.key});

  @override
  State<ScreenCounter> createState() => _ScreenCounterState();
}

class _ScreenCounterState extends State<ScreenCounter> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 184, 38, 55),
        title: const Text(
          'Contador',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {
              contador = 0;
              setState(() {});
            },
            icon: const Icon(
              Icons.refresh_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$contador', style: const TextStyle(fontSize: 80)),
            Text('click${contador == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 22))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              contador++;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              if (contador >= 1) {
                contador--;
              }
              setState(() {});
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                contador = 0;
                setState(() {});
              })
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
