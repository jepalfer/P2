import 'tienda.dart';
import 'mesaOficina.dart';

class TiendaOficina extends Tienda {
  TiendaOficina(int N) : super(N, "oficina") {
    for (int i = 0; i < N; i++) {
      MesaOficina mesa = new MesaOficina(i, "oficina", "azul");
      getMesas().add(mesa);
    }
  }
}
