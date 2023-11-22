// ignore_for_file: library_private_types_in_public_api

import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:agape_patrimonial/screens/movimientos/main/movimientos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      height: size.height,
      width: size.width,
      child: Row(
        children: [
          Container(
            width: size.width * 0.15,
            height: size.width,
            color: color1,
          ),
          Movimientos(
            size: size,
          ),
          Container(
            width: size.width * 0.15,
            height: size.width,
            color: color2,
          ),
        ],
      ),
    ));
  }
}
