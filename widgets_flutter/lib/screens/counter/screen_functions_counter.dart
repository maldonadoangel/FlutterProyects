import 'package:flutter/material.dart';

class ScreenFunctionsCounter extends StatefulWidget {
  const ScreenFunctionsCounter({super.key});

  @override
  State<ScreenFunctionsCounter> createState() => _ScreenFunctionsCounterState();
}

class _ScreenFunctionsCounterState extends State<ScreenFunctionsCounter> {
  int contadorClicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 197, 61),
          centerTitle: true,
          title: const Text(
            'Contador',
            style: TextStyle(
              color: Color.fromARGB(255, 46, 25, 7),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  contadorClicks = 0;
                });
              },
            )
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //---------botón para dejar el contador en cero -------------
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  contadorClicks = 0;
                });
              },
            ),

            //Espacio vació
            const SizedBox(height: 10),

            //--------Botón para agregar un estado al sumar los clics--------
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  contadorClicks++;
                });
              },
            ),

            const SizedBox(height: 10),

            //------------Botón para restar el contador------------------
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  if (contadorClicks >= 1) {
                    contadorClicks--;
                  }
                });
              },
            ),
          ],
        ));
  }
}

// -----Generamos un widget personalizado y unicamente agregamos los valores que van a cambiar en nuestros botones
class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
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
