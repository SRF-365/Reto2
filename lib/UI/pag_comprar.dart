import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/CONTROLER/C_G.dart';

class pag_comprar extends StatefulWidget {
  const pag_comprar({super.key});

  @override
  State<pag_comprar> createState() => _pag_comprarState();
}

class _pag_comprarState extends State<pag_comprar> {
  C_G Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () => ListView.builder(
          itemCount: Control.pro.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsetsDirectional.all(15),
              child: ListTile(
                leading: Image(image: NetworkImage(Control.pro[index].imagen)),
                title: Text((Control.pro[index].nombre).toString() +
                    "     |     " +
                    (Control.pro[index].precio).toString() +
                    " COP"),
                subtitle: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          int cantidad = Control.pro[index].cantidad - 1;
                          if (cantidad < 0) {
                            cantidad = 0;
                          }
                          Control.cambiarcantidad(index, cantidad);
                          Control.pro.refresh();
                        },
                        icon: Icon(Icons.remove_circle_rounded)),
                    VerticalDivider(),
                    IconButton(
                        onPressed: () {
                          int cantidad = Control.pro[index].cantidad + 1;
                          Control.cambiarcantidad(index, cantidad);
                          Control.pro.refresh();
                        },
                        icon: Icon(Icons.add_circle_rounded))
                  ],
                ),
                trailing: Text((Control.pro[index].cantidad).toString(),
                    style: TextStyle(fontSize: 25)),
              ),
            );
          },
        ),
      ),
    );
  }
}
