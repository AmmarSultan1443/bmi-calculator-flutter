import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0x0A0D22),
        scaffoldBackgroundColor: Color(0x0A0D22)
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => InputPage(),
        '/result' : (context) => ResultPage()
      },
    );
  }
}
