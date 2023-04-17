import 'mesa.dart';

class MesaCocina extends Mesa {
  double _altura = 1.2;

  MesaCocina(super._ID, super._tipo, this._altura);

  MesaCocina.otroConstructor(super._ID, super._tipo) {
    Mesa.otroConstructor(ID);
  }

  double get altura => _altura;

  void setAltura(double altura) {
    this._altura = altura;
  }
}
