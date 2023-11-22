// ignore_for_file: library_private_types_in_public_api

import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:agape_patrimonial/constants/styles/fonts/styles/style_principal.dart';
import 'package:agape_patrimonial/screens/movimientos/components/aply_filters.dart';
import 'package:agape_patrimonial/screens/movimientos/components/list.dart';
import 'package:agape_patrimonial/screens/movimientos/components/title.dart';
import 'package:flutter/material.dart';

class Movimientos extends StatefulWidget {
  final Size size;
  const Movimientos({Key? key, required this.size}) : super(key: key);

  @override
  _MovimientosState createState() => _MovimientosState();
}

class _MovimientosState extends State<Movimientos> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: widget.size.height,
      width: widget.size.width * 0.7,
      padding: const EdgeInsets.only(left: 3, right: 2),
      color: colorWhiteN,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Titles(size: size),
          AplyFilters(size: size),
          ListMovimientos(size: size)
        ],
      ),
    );
  }
}
