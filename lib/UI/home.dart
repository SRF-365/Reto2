import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/CONTROLER/C_G.dart';
import 'package:reto2/UI/menu.dart';
import 'package:reto2/UI/pag_acerca.dart';
import 'package:reto2/UI/pag_comprar.dart';
import 'package:reto2/UI/pag_inicio.dart';
import 'package:reto2/UI/pag_nibolsa.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Super tienda'),
    );
  }
}

List paginas = [pag_inicio(), pag_comprar(), pag_mibolsa(), pag_acerca()];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  C_G Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(() => paginas[Control.posicionPagina]),
    );
  }
}
