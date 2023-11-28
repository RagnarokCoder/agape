
import 'package:agape_patrimonial/constants/responsive/responsive.dart';
import 'package:agape_patrimonial/constants/styles/colors/colores.dart';
import 'package:agape_patrimonial/screens/login/components/onhover.dart';
import 'package:flutter/material.dart';


class Ayuda extends StatelessWidget {
  const Ayuda({super.key});

  @override
    Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25),
      child: Row(
        children: [
          const Padding(padding: EdgeInsets.only(left: 10,)),
             OnHoverB(
               builder:(isHover) { 
                return MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  child: Tooltip(
                    message: 'Hablar con supervisor para ingresar al portal',
                    
                      child: Image.asset('lib/assets/infoagape.png',
                      color: isHover ?  colorBlack : Responsive.isDesktop(context) ? colorPrincipal:Colors.white,
                      
                    ),
                    ),
                  ),
                  );
                },
             ),
         const SizedBox(width: 8),
            Text('Ayuda', style: TextStyle(color: Responsive.isDesktop(context) ? colorBlack:Colors.white, fontSize: 20),),
        ],
      ),
    );
  }
}

