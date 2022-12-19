import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final color;
  final textcolor;
  final String buttontext;
  Mybutton({this.color, this.textcolor, required this.buttontext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
                child: Text(
              buttontext,
              style: TextStyle(
                color: textcolor,
              ),
            )),
          )),
    );
  }
}
