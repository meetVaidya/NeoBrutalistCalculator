// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

const pinkColor = Color.fromRGBO(255, 166, 146, 1);
const redColor = Color.fromRGBO(255, 159, 159, 1);
const blueColor = Color.fromRGBO(166, 250, 255, 1);
const yellowColor = Color.fromRGBO(255, 229, 0, 1);

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  bool isACTapped = false;
  bool isParenthesesTapped = false;
  bool isPercentageTapped = false;
  bool isMultipliationTapped = false;
  bool isDivideTapped = false;
  bool isAddTapped = false;
  bool isMinusTapped = false;
  bool isOneTapped = false;
  bool isTwoTapped = false;
  bool isThreeTapped = false;
  bool isFourTapped = false;
  bool isFiveTapped = false;
  bool isSixTapped = false;
  bool isSevenTapped = false;
  bool isEightTapped = false;
  bool isNineTapped = false;
  bool isZeroTapped = false;
  bool isDecimalTapped = false;
  bool isDeleteTapped = false;
  bool isEqualTapped = false;

  //variables
  double firstNum = 0.0;
  double secondNum = 0.0;
  var inputText = '';
  var outputText = '';
  var inputOperation = '';

  onButtonClick(value) {
    if (value == "AC") {
      inputText = '';
      outputText = '';
    } else if (value == "del") {
      if (inputText.isNotEmpty) {
        inputText = inputText.substring(0, inputText.length - 1);
      }
    } else if (value == "=") {
      if (inputText.isNotEmpty) {
        var userInput = inputText;
        userInput = inputText.replaceAll("×", "*");
        Parser p = Parser();
        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalValue = expression.evaluate(EvaluationType.REAL, cm);
        outputText = finalValue.toString();
        if (outputText.endsWith(".0")) {
          outputText = outputText.substring(0, outputText.length - 2);
        }
        inputText = outputText;
      }
    } else {
      inputText = inputText + value;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(221, 221, 221, 1),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 41),
              child: SizedBox(
                width: 350.39,
                height: 80.84,
                child: Text(
                  'Calculator',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 49.36,
                    fontFamily: 'IBM Plex Mono',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 373.29,
              height: 202.12,
              child: Stack(
                children: [
                  Positioned(
                    left: 3.20,
                    top: 9.86,
                    child: Container(
                      width: 370.08,
                      height: 192.26,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.31),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 370.08,
                      height: 192.26,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFA5F6),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.93),
                          borderRadius: BorderRadius.circular(20.31),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            inputText,
                            style: TextStyle(fontSize: 48),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            outputText,
                            style: TextStyle(fontSize: 34),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.31, right: 17.41, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (v) {
                      setState(() {
                        isACTapped = false;
                      });
                    },
                    onTapDown: (v) {
                      setState(() {
                        isACTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('AC'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: redColor, boxShadow: [
                          !isACTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'AC',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (x) {
                      setState(() {
                        isParenthesesTapped = false;
                      });
                    },
                    onTapDown: (x) {
                      setState(() {
                        isParenthesesTapped = true;
                      });
                    },
                    // onTap: () => onButtonClick('()'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: blueColor, boxShadow: [
                          !isParenthesesTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '()',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (a) {
                      setState(() {
                        isPercentageTapped = false;
                      });
                    },
                    onTapDown: (a) {
                      setState(() {
                        isPercentageTapped = true;
                      });
                    },
                    // onTap: () => onButtonClick('%'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: blueColor, boxShadow: [
                          !isPercentageTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '%',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isDivideTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isDivideTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('/'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: blueColor, boxShadow: [
                          !isDivideTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '÷',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.31, right: 17.41, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isSevenTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isSevenTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('7'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isSevenTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '7',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isEightTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isEightTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('8'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isEightTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '8',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isNineTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isNineTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('9'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isNineTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '9',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isMultipliationTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isMultipliationTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('×'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: blueColor, boxShadow: [
                          !isMultipliationTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '×',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.31, right: 17.41, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isFourTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isFourTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('4'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isFourTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isFiveTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isFiveTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('5'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isFiveTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isSixTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isSixTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('6'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isSixTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '6',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isMinusTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isMinusTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('-'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: blueColor, boxShadow: [
                          !isMinusTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '-',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.31, right: 17.41, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isOneTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isOneTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('1'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isOneTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isTwoTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isTwoTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('2'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isTwoTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isThreeTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isThreeTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('3'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isThreeTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isAddTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isAddTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('+'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: blueColor, boxShadow: [
                          !isAddTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '+',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.31, right: 17.41, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isZeroTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isZeroTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('0'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isZeroTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '0',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isDecimalTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isDecimalTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('.'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isDecimalTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isDeleteTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isDeleteTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('del'),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration:
                            BoxDecoration(color: yellowColor, boxShadow: [
                          !isDeleteTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'del',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.04),
                  child: GestureDetector(
                    onTapUp: (b) {
                      setState(() {
                        isEqualTapped = false;
                      });
                    },
                    onTapDown: (b) {
                      setState(() {
                        isEqualTapped = true;
                      });
                    },
                    onTap: () => onButtonClick('='),
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: blueColor, boxShadow: [
                          !isEqualTapped
                              ? BoxShadow(
                                  color: Colors.black, offset: Offset(7, 7))
                              : BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '=',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.68,
                              fontFamily: 'IBM Plex Mono',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        )),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
