import 'package:carrito_compras/data/services/peticionesUser.dart';
import 'package:carrito_compras/domain/models/utiles.dart';
import 'package:get/get.dart';

class ControlUser extends GetxController {
  final Rxn<List<Mensajes>> _listarMensajes = Rxn<List<Mensajes>>([]);

  Future<void> crearUser(
      String nombre, String username, String password) async {
    _listarMensajes.value =
        await PeticionesUser.registarUser(nombre, username, password);
  }

  List<Mensajes>? get listaMensajes => _listarMensajes.value;
}
