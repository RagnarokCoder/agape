// ignore_for_file: library_private_types_in_public_api

import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:agape_patrimonial/constants/styles/fonts/styles/style_principal.dart';
import 'package:agape_patrimonial/constants/vars/vars.dart';
import 'package:flutter/material.dart';

class CardMovimientos extends StatefulWidget {
  const CardMovimientos({Key? key}) : super(key: key);

  @override
  _CardMovimientosState createState() => _CardMovimientosState();
}

dynamic monto = 4500.00;

class _CardMovimientosState extends State<CardMovimientos> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width,
      margin: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: size.width * .06,
            height: size.height * .06,
            child: Center(
              child: Text(
                monto > 0 ? "+\$${f.format(monto)}" : "\$${f.format(monto)}",
                style: styleSecondary(11, monto > 0 ? color9 : color4),
              ),
            ),
          ),
          SizedBox(
              width: size.width * .06,
              height: size.height * .06,
              child: Center(
                child: Text(
                  "18/11/2023",
                  style: styleSecondary(11, colorFont),
                ),
              )),
          SizedBox(
              width: size.width * .08,
              height: size.height * .06,
              child: Center(
                child: Text(
                  "Gasto de transporte",
                  overflow: TextOverflow.ellipsis,
                  style: styleSecondary(11, colorFont),
                ),
              )),
          SizedBox(
              width: size.width * .06,
              height: size.height * .06,
              child: Center(
                child: Text(
                  "Corriente",
                  style: styleSecondary(11, colorFont),
                ),
              )),
          Container(
            width: size.width * .07,
            height: size.height * .04,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: color1,
            ),
            child: Center(
              child: Text(
                "Ventas",
                style: styleSecondary(11, colorWhiteN),
              ),
            ),
          ),
          SizedBox(
              width: size.width * .08,
              height: size.height * .06,
              child: Center(
                child: Text(
                  "Es un detalle un poco largo",
                  overflow: TextOverflow.ellipsis,
                  style: styleSecondary(11, colorFont),
                ),
              )),
        ],
      ),
    );
  }
}
