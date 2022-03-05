import 'package:controller2/models/pessoa_model.dart';

class HomeController {
  final _pessoa = PessoaModel();
  String _resultado = '';
  String get resultado => _resultado;

  void setPeso(String value) {
    _pessoa.peso = double.tryParse(value) ?? 0.0;
  }

  void setAltura(String value) {
    _pessoa.altura = double.tryParse(value) ?? 0.0;
  }

  void classificarImc() {
    var imc = _pessoa.calcularImc();

    if (imc < 18) {
      _resultado = 'Tá magrinho, hein?! IMC: ${imc.toStringAsFixed(1)}';
    } else if (imc < 24) {
      _resultado = 'Tá no peso, mantém! IMC: ${imc.toStringAsFixed(1)}';
    } else if (imc > 24) {
      _resultado =
          'Engordou um pouquinho, hein?! IMC: ${imc.toStringAsFixed(1)}';
    }
  }
}
