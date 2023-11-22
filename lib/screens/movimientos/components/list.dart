// ignore_for_file: library_private_types_in_public_api

import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:agape_patrimonial/constants/styles/fonts/styles/style_principal.dart';
import 'package:agape_patrimonial/screens/movimientos/components/card_mov.dart';
import 'package:flutter/material.dart';

class ListMovimientos extends StatefulWidget {
  final Size size;
  const ListMovimientos({Key? key, required this.size}) : super(key: key);

  @override
  _ListMovimientosState createState() => _ListMovimientosState();
}

class _ListMovimientosState extends State<ListMovimientos> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: widget.size.height * 0.78,
      width: widget.size.width,
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            height: size.height * 0.05,
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
                      "Monto",
                      style: stylePrincipalBold(11, colorBlack),
                    ),
                  ),
                ),
                SizedBox(
                    width: size.width * .06,
                    height: size.height * .06,
                    child: Center(
                      child: Text(
                        "Fecha",
                        style: stylePrincipalBold(11, colorBlack),
                      ),
                    )),
                SizedBox(
                    width: size.width * .08,
                    height: size.height * .06,
                    child: Center(
                      child: Text(
                        "Concepto",
                        overflow: TextOverflow.ellipsis,
                        style: stylePrincipalBold(11, colorBlack),
                      ),
                    )),
                SizedBox(
                    width: size.width * .06,
                    height: size.height * .06,
                    child: Center(
                      child: Text(
                        "Cuenta",
                        style: stylePrincipalBold(11, colorBlack),
                      ),
                    )),
                SizedBox(
                    width: size.width * .06,
                    height: size.height * .06,
                    child: Center(
                      child: Text(
                        "Etiqueta",
                        style: stylePrincipalBold(11, colorBlack),
                      ),
                    )),
                SizedBox(
                    width: size.width * .08,
                    height: size.height * .06,
                    child: Center(
                      child: Text(
                        "Detalle",
                        overflow: TextOverflow.ellipsis,
                        style: stylePrincipalBold(11, colorBlack),
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: widget.size.height * .7,
            width: widget.size.width,
            child: ListView(
              children: [
                SizedBox(
                  width: widget.size.width,
                  child: Column(
                    children: [
                      for (int i = 0; i < 10; i++) const CardMovimientos()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
