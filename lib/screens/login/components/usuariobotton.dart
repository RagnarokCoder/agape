import 'package:agape_patrimonial/constants/responsive/responsive.dart';
import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:agape_patrimonial/main.dart';
import 'package:flutter/material.dart';

class Loginfield extends StatelessWidget {
  final String hintText;
  const Loginfield({Key? key, required this.hintText}) ;

  @override
  Widget build(BuildContext context) {
    return  ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(17),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorGray,
              width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(
              color: colorBlack,
              width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Responsive.isDesktop(context) ? colorBlack:Colors.white,
          ),
        ),
      ),
      );
  }
}