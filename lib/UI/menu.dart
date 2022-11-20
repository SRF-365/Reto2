import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2/CONTROLER/C_G.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  C_G Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 51, 43, 174)),
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://psn-rsc.prod.dl.playstation.net/psn-rsc/avatar/EP8802/CUSA02901_00-AV00000000000001_79D8AC171B7EEA76A261_xl.png"),
                  ),
                  accountName: Text("Santiago Rivera Franco"),
                  accountEmail: Text("sriveraf@correo.udistrital.edu.co")),
            ),
            Divider(),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text("Inicio"),
                    leading: Icon(Icons.home_rounded),
                    trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    onTap: () {
                      Navigator.pop(context);
                      Control.chagePosition(0);
                    },
                  ),
                  ListTile(
                    title: Text("Comprar"),
                    leading: Icon(Icons.monetization_on_rounded),
                    trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    onTap: () {
                      Navigator.pop(context);
                      Control.chagePosition(1);
                    },
                  ),
                  ListTile(
                    title: Text("Mi bolsa"),
                    leading: Icon(Icons.shopping_bag_rounded),
                    trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    onTap: () {
                      Navigator.pop(context);
                      Control.chagePosition(2);
                    },
                  ),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  Divider(),
                  ListTile(
                    title: Text("Acerca de"),
                    leading: Icon(Icons.person_rounded),
                    trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    onTap: () {
                      Navigator.pop(context);
                      Control.chagePosition(3);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
