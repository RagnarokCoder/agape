import 'package:agape_patrimonial/constants/responsive/responsive.dart';
import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:flutter/material.dart';
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: () {},
        child:  Text(
          '¿Olvidaste tu contraseña?',
          style: TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Responsive.isDesktop(context) ? colorBlack :Colors.white,
            color: Responsive.isDesktop(context) ? colorBlack :Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        )
      ),
    );
  }
}