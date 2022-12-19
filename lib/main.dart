import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Buttons.dart';

void main() => runApp(MaterialApp(
      home: Calculator(),
    ));

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    '*',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
              flex: 2,
              child: Container(
                child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (BuildContext context, int click) {
                      if (click == 0) {
                        return Mybutton(
                          buttontext: buttons[click],
                          color: Colors.green,
                          textcolor: Colors.white,
                        );
                      } else if (click == 1) {
                        return Mybutton(
                          buttontext: buttons[click],
                          color: Colors.red,
                          textcolor: Colors.white,
                        );
                      } else {
                        return Mybutton(
                          buttontext: buttons[click],
                          color: isOperator(buttons[click])
                              ? Colors.deepPurple
                              : Colors.deepPurple[50],
                          textcolor: isOperator(buttons[click])
                              ? Colors.white
                              : Colors.deepPurple,
                        );
                      }
                    }),
              )),
        ],
      ),
    );
    // ignore: dead_code
  }

  bool isOperator(String x) {
    if (x == '%' || x == '/' || x == '-' || x == '=' || x == '*' || x == '+') {
      return true;
    }
    return false;
  }
}
