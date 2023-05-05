import 'package:carrito_compras/ui/auth/login.dart';
import 'package:carrito_compras/ui/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Carrito de Compras',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: "/login",
      routes: {
        "/login": (context) => const Login(),
        "/register": (context) => const Register(),
      },
    );
  }
}
