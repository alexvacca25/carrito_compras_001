import 'dart:convert';

import 'package:carrito_compras/domain/models/user.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PeticionesValidarUser {
  static Future<List<User>> validarUser(String u, String p) async {
    var url = Uri.parse(
        "https://senaproyectos2023.000webhostapp.com/APIMOVIL/validaruser.php");

    final response = await http.post(url, body: {'user': u, 'pass': p});

    print(response.body);
    return compute(convertirRespuesta, response.body);
  }

  static List<User> convertirRespuesta(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    return pasar.map<User>((json) => User.crearjson(json)).toList();
  }
}
