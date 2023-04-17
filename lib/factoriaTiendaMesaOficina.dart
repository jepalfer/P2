import 'factoriaMuebles.dart';
import 'mesa.dart';
import 'mesaOficina.dart';
import 'tienda.dart';
import 'tiendaOficina.dart';

class FactoriaTiendaMesaOficina extends FactoriaMuebles {
  FactoriaTiendaMesaOficina() {}

  @override
  Mesa crearMesa(int ID) {
    Mesa mesaOficina = new MesaOficina.otroConstructor(ID, "oficina");

    return mesaOficina;
  }

  @override
  Tienda crearTienda(int N) {
    Tienda tiendaOficina = new TiendaOficina(N); // N mesas

    return tiendaOficina;
  }
}
