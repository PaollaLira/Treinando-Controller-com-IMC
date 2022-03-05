import 'dart:math' as math;

class PessoaModel {
  //calcular imc
  double _peso = 0.0;
  double _altura = 0.0;

  set peso(double value) {
    _peso = value;
  }

  set altura(double value) {
    _altura = value;
  }

  double calcularImc() {
    var imc = _peso / math.pow(_altura, 2);
    return imc;
  }
}
