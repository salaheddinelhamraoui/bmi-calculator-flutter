import 'package:flutter/material.dart';
import 'constants.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  double _bmi = 0;
  final int weight;
  final int height;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'لديك وزن زائد';
    } else if (_bmi > 18.5) {
      return 'وزنك مثالي';
    } else {
      return 'لديك وزن ناقص';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'لديك مؤشر أعلى من الطبيعي، جرب القيام بالمزيد من التمارين الرياضية';
    } else if (_bmi > 18.5) {
      return 'لديك جسم مثالي، حاول الحفاظ عليه';
    } else {
      return 'لديك مؤشر أقل من الطبيعي، كل المزيد من الطعام.';
    }
  }
}
