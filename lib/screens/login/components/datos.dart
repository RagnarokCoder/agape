import 'package:agape_patrimonial/constants/responsive/responsive.dart';
import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:agape_patrimonial/constants/styles/fonts/styles/style_principal.dart';
import 'package:agape_patrimonial/screens/login/components/botondeinicio.dart';
import 'package:agape_patrimonial/screens/login/components/olvidecontrasena.dart';
import 'package:agape_patrimonial/screens/login/components/usuariobotton.dart';
import 'package:flutter/material.dart';

class Datos1 extends StatelessWidget {
  const Datos1 ({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(

      child: IntrinsicWidth(
        child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                   Center(
                     child: Text('Bienvenido',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: Responsive.isDesktop(context) ? 50: 25,
                            fontWeight: FontWeight.bold,
                            color: Responsive.isDesktop(context) ? colorBlack:Colors.white,
                          ),
                          ),  
                   ),
                      const SizedBox(height: 60,),
                      const Loginfield(
                        hintText: 'Usuario',
                      ),
                      const  SizedBox(height: 15,),
                      const Loginfield(
                        hintText: 'Contraseña',
                      ),
                      const SizedBox(height: 5),
                      Container(
                        alignment: Alignment.centerRight,
                        child: const ForgotPassword()),
                      const SizedBox(height: 30,),
                      const GradientButton(),
                      
                    ],
        ),
      ),
    );  
  }
}
