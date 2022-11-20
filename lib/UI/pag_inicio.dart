import 'package:flutter/material.dart';

class pag_inicio extends StatefulWidget {
  const pag_inicio({super.key});

  @override
  State<pag_inicio> createState() => _pag_inicioState();
}

class _pag_inicioState extends State<pag_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
          image: NetworkImage(
              "https://i.pinimg.com/originals/5a/d0/47/5ad047a18772cf0488a908d98942f9bf.gif"),
        ),
      ),
    );
  }
}
