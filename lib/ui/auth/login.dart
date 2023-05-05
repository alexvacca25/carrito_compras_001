import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    labelText: 'Ingrese la Contraseña',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Ingresar')),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed("/register");
                },
                child: const Text('Crear Cuenta'))
          ],
        ),
      ),
    );
  }
}
