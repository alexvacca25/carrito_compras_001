import 'package:carrito_compras/domain/controller/controllerArticle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Articulos extends StatelessWidget {
  const Articulos({super.key});

  @override
  Widget build(BuildContext context) {
    ControlArticulos controla = Get.find();
    controla.listarArticulos();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Articulos'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_box_outlined))
        ],
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controla.listaArticle!.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(controla.listaArticle![index].foto),
              ),
              title: Text(controla.listaArticle![index].detalle),
              subtitle: Text(controla.listaArticle![index].marca),
              trailing: CircleAvatar(
                child: Text(controla.listaArticle![index].existencias),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
