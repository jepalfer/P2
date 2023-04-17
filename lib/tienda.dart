import "dart:async";
import 'mesa.dart';

class Tienda {
  List<Mesa> _mesas = [];
  String _tipo = "";
  int _numMesas = 0;

  Tienda(this._numMesas, this._tipo);

  List<Mesa> getMesas() {
    return _mesas;
  }

  void setTipo(String tipo) {
    _tipo = tipo;
  }

  void venderMesas(int numMesas) {
    for (int i = 0; i < numMesas; i++) {
      print("ID =  $i de mesa de tipo $_tipo después: " + _mesas[i].tipo);
    }
  }
}
