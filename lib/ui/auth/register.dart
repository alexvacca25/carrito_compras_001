import 'package:carrito_compras/domain/controller/controlerUser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    ControlUser controlu = Get.find();
    TextEditingController txtnombre = TextEditingController();
    TextEditingController txtusername = TextEditingController();
    TextEditingController txtpassword = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Cuenta'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  "https://www.eluniverso.com/resizer/rovLWxO1ZoqE4N_qn3UHM_5uIQs=/1005x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/76HSMUXXFRHOHKQIEJ7OPHX3ZU.jpg",
                  scale: 1),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtnombre,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: 'Ingrese el Nombre',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtusername,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: 'Ingrese el Usuario',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtpassword,
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: 'Ingrese la Contraseña',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            OutlinedButton(
                onPressed: () {
                  controlu
                      .crearUser(
                          txtnombre.text, txtusername.text, txtpassword.text)
                      .then((value) {
                    Get.snackbar(
                        'Usuarios', controlu.listaMensajes![0].mensaje,
                        duration: const Duration(seconds: 4),
                        icon: const Icon(Icons.info),
                        backgroundColor: Colors.yellow  
                        );
                  });
                },
                child: const Text('Crear Cuenta')),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Regresar'))
          ],
        ),
      ),
    );
  }
}
