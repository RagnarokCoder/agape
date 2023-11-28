import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class OnHoverB extends StatefulWidget {
  final Widget Function(bool isHoverd) builder;

  const OnHoverB({Key? key, 
  required this.builder}) : super(key: key);

  @override
 OnHoverBState createState() => OnHoverBState();
}

class OnHoverBState extends State<OnHoverB> {
bool isHoverd = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()
    ..scale(1.1);
    final transform =isHoverd ? hoveredTransform : Matrix4.identity() ;
    
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: InkWell(
          onTap: null,
          onHover: (hovering){
          setState (() => isHoverd = hovering);
          },
        child: AnimatedContainer(
          curve: Sprung.overDamped,
          duration: const Duration(milliseconds: 200),
          transform: transform,
          child: widget.builder(isHoverd),
          ),
      ),
    );

  }
  
 void onEntered(bool isHoverd) => setState(() {
  this.isHoverd = isHoverd;
  });

}