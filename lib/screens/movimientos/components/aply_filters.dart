// ignore_for_file: library_private_types_in_public_api

import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:agape_patrimonial/constants/styles/fonts/styles/style_principal.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AplyFilters extends StatefulWidget {
  final Size size;
  const AplyFilters({Key? key, required this.size}) : super(key: key);

  @override
  _AplyFiltersState createState() => _AplyFiltersState();
}

List<String> filtersA = ["Ingreso", "Egreso", "1,500"];

class _AplyFiltersState extends State<AplyFilters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.08,
      width: widget.size.width,
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Text(
            "34 movimientos",
            style: stylePrincipalBold(11, colorFont),
          ),
          for (var i in filtersA) tag(i)
        ],
      ),
    );
  }

  Widget tag(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: InkWell(
        onTap: () {
          setState(() {
            filtersA.remove(text);
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: styleSecondary(10, colorFont),
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(
              LineIcons.times,
              size: 11,
              color: colorFont,
            )
          ],
        ),
      ),
    );
  }
}
