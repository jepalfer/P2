import 'factoriaMuebles.dart';
import 'mesa.dart';
import 'mesaCocina.dart';
import 'tienda.dart';
import 'tiendaCocina.dart';

class FactoriaTiendaMesaCocina extends FactoriaMuebles {
  FactoriaTiendaMesaCocina() {}

  @override
  Mesa crearMesa(int ID) {
    Mesa mesaCocina = new MesaCocina.otroConstructor(ID, "oficina");

    return mesaCocina;
  }

  @override
  Tienda crearTienda(int N) {
    Tienda tiendaCocina = new TiendaCocina(N);

    return tiendaCocina;
  }
}
