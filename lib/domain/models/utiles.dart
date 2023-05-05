class Mensajes {
  late String mensaje;

  Mensajes({required this.mensaje});

  factory Mensajes.crearjson(Map<String, dynamic> jsonmap) {
    return Mensajes(mensaje: jsonmap['mensaje']);
  }
}
