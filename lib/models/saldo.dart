import 'package:flutter/material.dart';

//ChangeNotifier permite que ele fique disponivel em toda aplicação
class Saldo extends ChangeNotifier {
  double valor;

  Saldo(this.valor);

  void adiciona(double valor) {
    this.valor += valor;

    notifyListeners();
    //avisa o componente que alterou o valor
  }

  void subtrai(double valor) {
    this.valor -= valor;

    notifyListeners();
  }

  @override
  String toString() {
    return 'R\$ $valor';
  }
}
