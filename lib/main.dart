import 'package:flutter/material.dart';
import 'input_page.dart';
import"package:flutter/services.dart";

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
   statusBarColor: Colors.transparent,
  ));
 runApp(BMICalculator());
}
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //  fontFamily: 'Poppins',
        appBarTheme: AppBarTheme(color: Colors.white,),
        textTheme: TextTheme(subtitle1: TextStyle(color: Colors.black))

      ),
      home: InputPage(),

    );
  }
}

