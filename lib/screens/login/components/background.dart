

import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:agape_patrimonial/screens/login/components/datos.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
        children: [
          // Primer contenedor con fondo blanco (1/3 de pantalla)
          Container(
            alignment: Alignment.centerRight,
            height: size.height,
            width: size.width / 3,
            color: colorWhiteN,
              child: 
               const Datos1 (
               ),
              ),
          // Segundo contenedor con imagen de fondo (2/3 de pantalla)
          Container(
            height: size.height,
            width: (2 * size.width) / 3,
            decoration:  BoxDecoration(
              color: colorWhiteN,
              image:  const DecorationImage(
                image: AssetImage('lib/assets/background.png'), // Ruta de tu imagen de fondo
                fit: BoxFit.cover,
                alignment: Alignment.centerRight,
              ),
            ),
          ),
        ],
    );

  }
}