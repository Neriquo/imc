import 'dart:math';

class CalculatorBrain {
  int height;
  int weight;

  double _bmi = 0;

  CalculatorBrain(this.height, this.weight);

  String calculate() {
    // /100 pour convertir en mètres
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Surpoids';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Sous-poids';
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'Vous avez un poids corporel supérieur à la normale. Essayez de faire plus d\'exercice.';
    } else if (_bmi > 18.5) {
      return 'Vous avez un poids corporel normal.';
    } else {
      return 'Vous avez un poids corporel inférieur à la normale. Essayez de manger plus.';
    }
  }
}
