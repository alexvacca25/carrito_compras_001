import 'dart:convert';

import 'package:carrito_compras/domain/models/utiles.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PeticionesUser {
  static Future<List<Mensajes>> registarUser(
      String nombre, String u, String p) async {
    var url = Uri.parse(
        "https://senaproyectos2023.000webhostapp.com/APIMOVIL/agregarUser.php");

    final response = await http
        .post(url, body: {'nombre': nombre, 'user': u, 'password': p});

    print(response.body);
    return compute(convertirRespuesta, response.body);
  }

  static List<Mensajes> convertirRespuesta(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    return pasar.map<Mensajes>((json) => Mensajes.crearjson(json)).toList();
  }
}
