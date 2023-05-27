import 'package:carrito_compras/domain/controller/controlerUser.dart';
import 'package:carrito_compras/domain/controller/controllerArticle.dart';
import 'package:carrito_compras/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());

  Get.put(ControlUser());
  Get.put(ControlArticulos());
}
