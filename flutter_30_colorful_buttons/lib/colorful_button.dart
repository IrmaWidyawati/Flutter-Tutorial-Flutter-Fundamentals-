import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class ColorfulButtons extends StatefulWidget {
  Color mainColor, secondColor;
  IconData iconData;
  //ColorfulButtons({ Key? key }) : super(key: key);

  @override
  State<ColorfulButtons> createState() => _ColorfulButtonsState(mainColor, secondColor, iconData);
  ColorfulButtons(this.mainColor,this.secondColor, this.iconData);
}

class _ColorfulButtonsState extends State<ColorfulButtons> {
  Color mainColor, secondColor;
  IconData iconData;
  bool isPressed = false;
  _ColorfulButtonsState(this.mainColor, this.secondColor, this.iconData);
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) { setState(() {
          isPressed= !isPressed;
        });},
        onTapUp: (details) { setState(() {
          isPressed= !isPressed;
        });},
        onTapCancel: () { setState(() {
          isPressed= !isPressed;
        });},
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (isPressed) ? 5  : 10,
          shadowColor: (isPressed) ? secondColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                 SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      color: (isPressed) ? secondColor : mainColor,
                      child: Transform.rotate(
                        angle: - pi / 4,
                        child: Icon(
                          iconData, color: Colors.white,
                        ),
                      ),
                    ),
                 ),
                 Transform.translate(
                   offset: Offset(30, 30),
                   child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                   ),
                 ),
                 Transform.translate(
                   offset: Offset(-30, 30),
                   child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                   ),
                 ),
                 Transform.translate(
                   offset: Offset(30, -30),
                   child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                   ),
                 ),
                 Transform.translate(
                   offset: Offset(-30, -30),
                   child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                   ),
                 ),
               ],
            ),
          ),
        ),
      ),
    );
  }
}



