import 'tienda.dart';
import 'mesaCocina.dart';

class TiendaCocina extends Tienda {
  double _altura = 2;
  TiendaCocina(int N) : super(N, "cocina") {
    for (int i = 0; i < N; i++) {
      MesaCocina mesa = new MesaCocina(i, "cocina", _altura);
      getMesas().add(mesa);
    }
  }
}
