import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/CONTROLER/C_G.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class pag_mibolsa extends StatefulWidget {
  const pag_mibolsa({super.key});

  @override
  State<pag_mibolsa> createState() => _pag_mibolsaState();
}

class _pag_mibolsaState extends State<pag_mibolsa> {
  C_G Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: Control.pro.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsetsDirectional.all(10),
                    child: Control.pro[index].cantidad == 0
                        ? Text("")
                        : ListTile(
                            title: Text((Control.pro[index].nombre).toString()),
                            leading: Image(
                                image: NetworkImage(Control.pro[index].imagen)),
                            subtitle: Row(
                              children: [
                                Text("Cantidad: " +
                                    (Control.pro[index].cantidad).toString()),
                                Text("  |   Precio: " +
                                    (Control.pro[index].cantidad *
                                            Control.pro[index].precio)
                                        .toString() +
                                    " COP")
                              ],
                            ),
                          ),
                  );
                },
              ),
            ),
            Divider(),
            Text(
              "Total a pagar: " + Control.calculartotal().toString(),
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  Alert(
                      context: context,
                      title: "¡COMPRADO!",
                      desc: "Compra realizada exitosamente",
                      buttons: [
                        DialogButton(
                            child: Text("ENTENDIDOO"),
                            onPressed: () {
                              Control.limpiar();
                              Navigator.pop(context);
                              Control.chagePosition(0);
                            })
                      ]).show();
                },
                icon: Icon(Icons.playlist_add_check_rounded),
                label: Text("¡COMPRAR!"))
          ],
        ),
      ),
    );
  }
}
