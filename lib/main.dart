import 'package:flutter/material.dart';
import 'package:calculator/calc.dart';

// ignore: prefer_const_constructors
void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calc(),
    );
  }
}
