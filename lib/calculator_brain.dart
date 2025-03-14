import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double? _bmi; // Make it nullable

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1); // Use ! to ensure it's not null
  }

  String getResult() {
    if (_bmi == null) {
      return "Calculate BMI first!";
    }

    if (_bmi! >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi! > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi == null) {
      return "Calculate BMI first!";
    }

    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You should eat more!';
    }
  }
}
