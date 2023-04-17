class Mesa {
  String _tipo = "mesa";
  int _ID = 0;

  Mesa(this._ID, this._tipo);

  Mesa.otroConstructor(int ID) {
    _ID = ID;
  }

  int get ID => _ID;
  String get tipo => _tipo;

  @override
  String toString() => "El ID es $_ID de tipo: $_tipo";
}
