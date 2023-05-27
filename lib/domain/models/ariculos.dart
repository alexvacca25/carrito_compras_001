class Article {
  late int id;
  late String detalle;
  late String marca;
  late String existencias;
  late String foto;

  Article(
      {required this.id,
      required this.detalle,
      required this.marca,
      required this.existencias,
      required this.foto});

  factory Article.crearjson(Map<String, dynamic> jsonmap) {
    return Article(
      id: int.parse(jsonmap['id']),
      detalle: jsonmap['detalle'],
      marca: jsonmap['marca'],
      existencias: jsonmap['existencias'],
      foto: jsonmap['foto'],
    );
  }
}
