// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
  bool isTapped = false;

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
                        isTapped = false;
                      });
                    },
                    onTapDown: (v) {
                      setState(() {
                        isTapped = true;
                      });
                    },
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: redColor, boxShadow: [
                          !isTapped
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
                    onTapUp: (v) {
                      setState(() {
                        isTapped = false;
                      });
                    },
                    onTapDown: (v) {
                      setState(() {
                        isTapped = true;
                      });
                    },
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: blueColor, boxShadow: [
                          !isTapped
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
                    onTapUp: (v) {
                      setState(() {
                        isTapped = false;
                      });
                    },
                    onTapDown: (v) {
                      setState(() {
                        isTapped = true;
                      });
                    },
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: blueColor, boxShadow: [
                          !isTapped
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
                    onTapUp: (v) {
                      setState(() {
                        isTapped = false;
                      });
                    },
                    onTapDown: (v) {
                      setState(() {
                        isTapped = true;
                      });
                    },
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: 74.46,
                        height: 74.46,
                        decoration: BoxDecoration(color: blueColor, boxShadow: [
                          !isTapped
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
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: blueColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.31, right: 17.41, top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: blueColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.31, right: 17.41, top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: blueColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.31, right: 17.41, top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(right: 16.44, top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: yellowColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                Padding(
                  padding: const EdgeInsets.only(top: 28.04),
                  child: Container(
                      width: 74.46,
                      height: 74.46,
                      decoration: BoxDecoration(color: blueColor, boxShadow: [
                        BoxShadow(color: Colors.black, offset: Offset(7, 7))
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
                )
              ],
            )
          ],
        ));
  }
}
