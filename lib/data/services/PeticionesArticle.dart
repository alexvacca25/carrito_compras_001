import 'dart:convert';

import 'package:carrito_compras/domain/models/ariculos.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PeticionesArticle {
  static Future<List<Article>> listaArticle() async {
    var url = Uri.parse(
        "https://senaproyectos2023.000webhostapp.com/APIMOVIL/listararticle.php");

    final response = await http.post(url);

    print(response.body);
    return compute(convertirRespuesta, response.body);
  }

  static List<Article> convertirRespuesta(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    return pasar.map<Article>((json) => Article.crearjson(json)).toList();
  }
}
