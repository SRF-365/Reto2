import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

class pag_acerca extends StatefulWidget {
  const pag_acerca({super.key});

  @override
  State<pag_acerca> createState() => _pag_acercaState();
}

class _pag_acercaState extends State<pag_acerca> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person_pin_outlined),
            title: Text("Santiago Rivera Franco"),
            subtitle: Text("Desarrollador"),
          ),
          ListTile(
            leading: Icon(Icons.alternate_email_rounded),
            title: Text("sriveraf@correo.udistrital.edu.co"),
            subtitle: Text("Email"),
          ),
          ListTile(
            leading: Icon(Icons.whatsapp_rounded),
            title: Text("+573197285916"),
            subtitle: Text("WhastApp"),
          )
        ],
      ),
    );
  }
}
