import 'dart:ui';

import 'package:flutter/material.dart';

class ListClientsPage extends StatefulWidget {
  @override
  _ListClientsPageState createState() => _ListClientsPageState();
}

class _ListClientsPageState extends State<ListClientsPage> {
  List<Cliente> clientes = [
    Cliente('Renzo', 26, "Aumenta Fuerza", "Aumentar músculo"),
    Cliente('Diego', 24, "Aumenta Fuerza", "Bajar peso"),
    Cliente('David', 27, "Aumenta Fuerza", "Aumentar músculo"),
    Cliente('Javier', 27, "Aumenta Fuerza", "Bajar peso"),
    Cliente('Pamela', 31, "Aumentar resistencia", "Bajar peso"),
    Cliente('Pia', 31, "Aumenta Fuerza", "Aumentar músculo"),
    Cliente('Giorgia', 28, "Aumenta Fuerza", "Aumentar músculo"),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blueAccent, Colors.greenAccent])),
        ),
        Container(
            margin: EdgeInsets.only(left: 60, top: 80),
            width: 400,
            height: 130,
            child: Text("Lista de Clientes",
                style: TextStyle(
                    fontSize: 40, fontFamily: 'Exo', color: Colors.white))),
        Container(
          margin: EdgeInsets.only(top: 120),
          padding: EdgeInsets.all(15),
          width: 400,
          child: Expanded(
            child: ListView.builder(
              itemCount: clientes.length,
              itemBuilder: (c, i) {
                return Card(
                  child: ListTile(
                    trailing: Icon(Icons.event_available),
                    title: Text(
                      clientes[i].name,
                      style: TextStyle(fontFamily: 'Exo'),
                    ),
                    subtitle: Text(
                      clientes[i].edad.toString(),
                      style: TextStyle(fontFamily: 'Exo'),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}

class Cliente {
  String name;
  int edad;
  String objFisico;
  String objNutricional;

  Cliente(
    this.name,
    this.edad,
    this.objFisico,
    this.objNutricional,
  );
}
