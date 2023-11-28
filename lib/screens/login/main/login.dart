

import 'package:agape_patrimonial/constants/responsive/responsive.dart';
import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:agape_patrimonial/screens/login/components/ayuda.dart';
import 'package:agape_patrimonial/screens/login/components/background.dart';
import 'package:agape_patrimonial/screens/login/components/datos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {   
    return  Responsive.isDesktop(context) ? const Scaffold(
      body: SingleChildScrollView(
        child: Stack(
              children: <Widget>[
                 Background(),
                 Ayuda(),
              ],
            ),
      ),
    ):  Scaffold(
      body: SingleChildScrollView(
        child: Stack(
            children: <Widget>[
              Container(
            height: 1000,
            width: 1000,
           decoration: BoxDecoration(
                color: colorPrincipal,
              ),
              child: Stack(
                children: [
                  // Imagen de fondo
                  Image.asset(
                    'lib/assets/fondologo1.png', // Ruta de tu imagen de fondo
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    alignment: Alignment.centerRight,
                  ),
                  // Desenfoque
                   const BlurHash(
                    hash: 'e6QN#UH@f+r@of_LMeWpWCWV.QR6ofayof%1aLayayfQtQaeoeayfk', // Ajusta el hash según tus necesidades
                    imageFit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          const Column(
            children: [
              SizedBox(height: 10),    
              Ayuda(),
              Image(image: AssetImage('lib/assets/agapeblanco.png'), width: 300, height: 300,),
              Datos1(),
              SizedBox(height: 30),
              ],
          ),
            ],
        ),
      ),
    );
  }
}