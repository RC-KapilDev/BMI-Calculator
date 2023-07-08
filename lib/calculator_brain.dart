import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _BMI = 0;
  CalculatorBrain({required this.weight, required this.height});

  String BMIcalculator() {
    _BMI = weight / pow(height / 100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String resultBMI() {
    if (_BMI >= 25) {
      return 'OVER WEIGHT';
    } else if (_BMI > 18) {
      return 'NORMAL';
    } else {
      return 'UNDER WEIGHT';
    }
  }

  String resulttextBMI() {
    if (_BMI >= 25) {
      return 'Try to do some cardio';
    } else if (_BMI > 18) {
      return 'Good Keep going';
    } else {
      return 'Try to Eat More';
    }
  }
}
