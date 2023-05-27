import 'package:carrito_compras/data/services/PeticionesArticle.dart';
import 'package:carrito_compras/domain/models/ariculos.dart';
import 'package:get/get.dart';

class ControlArticulos extends GetxController {
  final Rxn<List<Article>> _listarArticle = Rxn<List<Article>>([]);

  Future<void> listarArticulos() async {
    _listarArticle.value = await PeticionesArticle.listaArticle();
  }

  List<Article>? get listaArticle => _listarArticle.value;
}
