import 'package:flutter/material.dart';

class NeuCircle extends StatelessWidget {
  final child;
  const NeuCircle({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      alignment: Alignment.center,
      margin: EdgeInsets.all(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 15, 127, 255),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 11, 206, 255),
              offset: Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
          BoxShadow(
              color: Color.fromARGB(255, 15, 91, 255),
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 13, 90, 255),    //keeping it all blue, no idea where these colors might pop up
            Color.fromARGB(255, 24, 124, 255),
            Color.fromARGB(255, 31, 27, 255),
            Color.fromARGB(255, 8, 115, 255),
          ],
          stops: [0.1, 0.3, 0.8, 1],
        ),
      ),
      child: child,
    );
  } //by Surja Sekhar Sengupta
}
