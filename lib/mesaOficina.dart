import 'mesa.dart';

class MesaOficina extends Mesa {
  String _color = "negro";

  MesaOficina(super._ID, super._tipo, this._color);

  MesaOficina.otroConstructor(super._ID, super._tipo) {
    Mesa.otroConstructor(ID);
  }

  String get color => _color;

  void setColor(String color) {
    this._color = color;
  }
}
