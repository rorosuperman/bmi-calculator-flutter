
import 'package:bmi_calculator/main.dart';

import 'bottombutton.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseable_card.dart';

class Resultpage extends StatelessWidget {


  Resultpage({@required this.BMInumber, @required this.BMIword, @required this.BMIfeedback});

  final String BMInumber;
  final String BMIword;
  final String BMIfeedback;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF8F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFFBF8F1),
        shadowColor: Colors.grey,
        // toolbarHeight: 70,
        toolbarOpacity: 1.0,
        elevation: 0,
        //   backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Body Mass Index', style: appbarstyle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                "Your Results",
                style: resultstyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    BMIword.toUpperCase(),
                    style: resulttextstyle,
                  ),
                  Text(
                    BMInumber,
                    style: resultvaluestyle,
                  ),
                  Text(
                    BMIfeedback,
                    style: resultfeedback,
                  )
                ],
              ),
            ),
          ),
          bottomButton(lable: "Re-Calculate",ontap: () {
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
