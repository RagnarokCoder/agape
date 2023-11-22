// ignore_for_file: library_private_types_in_public_api

import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:flutter/material.dart';

import '../../../constants/styles/fonts/styles/style_principal.dart';

class Titles extends StatefulWidget {
  final Size size;
  const Titles({Key? key, required this.size}) : super(key: key);

  @override
  _TitlesState createState() => _TitlesState();
}

int index = 0;

class _TitlesState extends State<Titles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.08,
      width: widget.size.width,
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Lista de movimientos",
            style: styleSecondary(32, colorFont),
          ),
          SizedBox(
            width: widget.size.width * 0.07,
          ),
          filters(widget.size)
        ],
      ),
    );
  }

  Widget filters(Size size) {
    return SizedBox(
      height: size.height * 0.04,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                index = 0;
              });
            },
            child: Container(
              width: size.width * 0.07,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                  color: index == 0 ? colorPrincipal : colorWhiteN),
              child: Center(
                child: Text(
                  "Hector",
                  style:
                      styleSecondary(12, index == 0 ? colorWhiteN : colorFont),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 1;
              });
            },
            child: Container(
              width: size.width * 0.07,
              decoration: BoxDecoration(
                  color: index == 1 ? colorPrincipal : colorWhiteN),
              child: Center(
                child: Text(
                  "Daniel",
                  style:
                      styleSecondary(12, index == 1 ? colorWhiteN : colorFont),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 2;
              });
            },
            child: Container(
              width: size.width * 0.07,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: index == 2 ? colorPrincipal : colorWhiteN),
              child: Center(
                child: Text(
                  "Amex",
                  style:
                      styleSecondary(12, index == 2 ? colorWhiteN : colorFont),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
