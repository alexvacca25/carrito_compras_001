class User {
  late int id;
  late String nombre;
  late String username;
  late String password;

  User(
      {required this.id,
      required this.nombre,
      required this.username,
      required this.password});

  factory User.crearjson(Map<String, dynamic> jsonmap) {
    return User(
      id: int.parse(jsonmap['id']),
      nombre: jsonmap['nombre'],
      username: jsonmap['username'],
      password: jsonmap['password'],
    );
  }
}
