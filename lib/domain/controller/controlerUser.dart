import 'package:carrito_compras/data/services/peticionValidar.dart';
import 'package:carrito_compras/data/services/peticionesUser.dart';
import 'package:carrito_compras/domain/models/user.dart';
import 'package:carrito_compras/domain/models/utiles.dart';
import 'package:get/get.dart';

class ControlUser extends GetxController {
  final Rxn<List<Mensajes>> _listarMensajes = Rxn<List<Mensajes>>([]);
  final Rxn<List<User>> _listarUser = Rxn<List<User>>([]);

  Future<void> crearUser(
      String nombre, String username, String password) async {
    _listarMensajes.value =
        await PeticionesUser.registarUser(nombre, username, password);
  }

  Future<void> validarUser(
      String username, String password) async {
    _listarUser.value =
        await PeticionesValidarUser.validarUser(username, password);
  }

  List<Mensajes>? get listaMensajes => _listarMensajes.value;
  List<User>? get listaUser => _listarUser.value;
}
