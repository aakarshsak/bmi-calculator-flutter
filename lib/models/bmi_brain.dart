import 'dart:math';

class Brain {
  int height;
  int weight;
  int age;

  double _bmi;

  Brain(this.height, this.weight, this.age);

  void calculate() {
    double h = height / 100.0;
    _bmi = weight / pow(h, 2);
  }

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String resultBMI() {
    if (_bmi > 25)
      return "OVERWEIGHT";
    else if (_bmi >= 18.5) return "NORMAL";
    return "UNDERWEIGHT";
  }

  String adviceBMI() {
    if (_bmi > 25)
      return "You are a bit overweight.Please exercise more!";
    else if (_bmi >= 18.5) return "You have a normal body weight.Good job!";
    return "You are very underweight.Please eat more!";
  }
}
