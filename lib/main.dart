import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String equation = '0';
  String result = '0';
  String expresstion = '';
  double equationFontSize = 50;
  double resultFontSize = 40;

  buttonOnPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        equation = '0';
        result = '0';
        equationFontSize = 50;
        resultFontSize = 40;
      } else if (buttonText == '←') {
        equationFontSize = 50;
        resultFontSize = 40;
        equation = equation.substring(0, equation.length - 1);
        if (equation == '') {
          equation = '0';
        }
      } else if (buttonText == '=') {
        equationFontSize = 40;
        resultFontSize = 50;
        expresstion = equation;
        expresstion = expresstion.replaceAll('×', '*');
        expresstion = expresstion.replaceAll('÷', '/');

        try {
          Parser p = Parser();
          Expression exp = p.parse(expresstion);
          ContextModel cm = ContextModel();
          double eval = exp.evaluate(EvaluationType.REAL, cm);

          result = "$eval";
        } catch (e) {
          result = 'Error';
        }
      } else {
        equationFontSize = 50;
        resultFontSize = 40;
        if (equation == '0') {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  Widget buidButton(String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(24)),
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      child: MaterialButton(
        onPressed: () {
          buttonOnPressed(buttonText);
        },
        padding: EdgeInsets.all(16),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff17171C),
      // appBar: AppBar(
      //   title: Text('Calculator'),
      //   backgroundColor: Color(0xff17171C),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(
                equation,
                style:
                    TextStyle(fontSize: equationFontSize, color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(
                result,
                style: TextStyle(fontSize: resultFontSize, color: Colors.white),
              ),
            ),
            Expanded(child: Divider()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenSize.width * 0.75,
                  child: Table(
                    children: [
                      TableRow(children: [
                        buidButton('C', 1, Color(0xff4E505F)),
                        buidButton('←', 1, Color(0xff4E505F)),
                        buidButton('÷', 1, Color(0xff4E505F))
                      ]),
                      TableRow(children: [
                        buidButton('7', 1, Color(0xff2E2F38)),
                        buidButton('8', 1, Color(0xff2E2F38)),
                        buidButton('9', 1, Color(0xff2E2F38))
                      ]),
                      TableRow(children: [
                        buidButton('4', 1, Color(0xff2E2F38)),
                        buidButton('5', 1, Color(0xff2E2F38)),
                        buidButton('6', 1, Color(0xff2E2F38))
                      ]),
                      TableRow(children: [
                        buidButton('1', 1, Color(0xff2E2F38)),
                        buidButton('2', 1, Color(0xff2E2F38)),
                        buidButton('3', 1, Color(0xff2E2F38))
                      ]),
                      TableRow(children: [
                        buidButton('.', 1, Color(0xff2E2F38)),
                        buidButton('0', 1, Color(0xff2E2F38)),
                        buidButton('00', 1, Color(0xff2E2F38))
                      ]),
                    ],
                  ),
                ),
                Container(
                  width: screenSize.width * 0.25,
                  child: Table(
                    children: [
                      TableRow(
                          children: [buidButton('×', 1, Color(0xff4B5EFC))]),
                      TableRow(
                          children: [buidButton('-', 1, Color(0xff4B5EFC))]),
                      TableRow(
                          children: [buidButton('+', 1, Color(0xff4B5EFC))]),
                      TableRow(
                          children: [buidButton('=', 2.2, Color(0xff4B5EFC))]),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
