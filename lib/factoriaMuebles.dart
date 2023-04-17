import 'tienda.dart';
import 'mesa.dart';

abstract class FactoriaMuebles {
  Mesa crearMesa(int ID);
  Tienda crearTienda(int N);
}
