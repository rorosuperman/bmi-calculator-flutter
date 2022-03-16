
import 'dart:math';

import 'package:flutter/cupertino.dart';
class CalculatorBrain{

  CalculatorBrain({ this.weight, this.height});
  final int height;
  final int weight;
  double _bmi;

  String bmiCalculator(){
    _bmi = weight / pow(height/100, 2);
  return _bmi.toStringAsFixed(1);
  }
  String getresults() {
    if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }
  String getfeedback(){
    if (_bmi>=25){
        return "go and do some exercise.";
      }else if (_bmi > 18.5){
        return "what else can I say.";
      }else{
        return "Go and get something to eat!";
      }
    }
}