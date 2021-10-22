import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/widgets.dart';

class Transferencias extends ChangeNotifier {
  final List<Transferencia> _transfrencias = [];

  List<Transferencia> get transferencias => _transfrencias;

  adiciona(Transferencia novaTransfrencia) {
    transferencias.add(novaTransfrencia);

    notifyListeners();
  }
}
