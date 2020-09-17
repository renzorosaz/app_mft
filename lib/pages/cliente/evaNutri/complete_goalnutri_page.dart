import 'dart:ui';

import 'package:flutter/material.dart';

class CompleteGoalNutriPage extends StatefulWidget {
  CompleteGoalNutriPage({Key key}) : super(key: key);

  @override
  _CompleteGoalNutriPageState createState() => _CompleteGoalNutriPageState();
}

class _CompleteGoalNutriPageState extends State<CompleteGoalNutriPage> {
  int objNutricional;

  List<bool> _seleccionados = [];

 /*  bool boxActiado = false;
  bool boxActiado2 = false;

  Color cellActivado = Colors.black;
  Color cellDesactivado = Colors.white; */

  final List<MalHabito> maloshabit = [
    MalHabito('No tomo agua', false),
    MalHabito('No duermo 7 u 8 hrs', false),
    MalHabito('No como frutas', false),
  ];

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
            margin: EdgeInsets.only(left: 210, top: 110),
            width: 370,
            height: 180,
            child: Text("1/3",
                style: TextStyle(
                    fontSize: 90, fontFamily: 'Exo', color: Colors.white24))),
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 70, top: 70),
                    width: 400,
                    height: 130,
                    child: Text("Objetivo  Nutricional",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Exo',
                            color: Colors.white))),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                      "Selecciona un objetivo nutricional, tipo de actividad Física y algunos malos hábitos si lo tuvieses de manera consciente para así poder diseñar una mejor experiencia en tu programa nutricional",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Exo2',
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    'Seleccionar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'Exo2',
                        fontWeight: FontWeight.w700),
                    maxLines: 1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    'Objetivo Nutricional',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Exo2',
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                ),
                Container(
                  width: 400,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: DropdownButton(
                      underline: Container(
                        height: 2,
                        color: Colors.white,
                      ),
                      isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down_circle_sharp),
                      value: objNutricional,
                      items: [
                        DropdownMenuItem(
                            child: Text("Bajar de Peso"), value: 1),
                        DropdownMenuItem(child: Text("Tonificar"), value: 2),
                        DropdownMenuItem(
                            child: Text("Aumentar Masa Muscular"), value: 3)
                      ],
                      onChanged: (value) {
                        setState(() {
                          objNutricional = value;
                        });
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.only(right: 80),
                  child: Text(
                    'Malos hábitos',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Exo2',
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 200,
                  child: ListView.builder(
                      itemCount: maloshabit.length,
                      itemBuilder: (c, i) {
                        return ListTile(
                          title: Text(maloshabit[i].nombreHabito,
                              style: TextStyle(color: Colors.white)),
                          leading: Checkbox(
                              checkColor: Colors.white,
                              activeColor: Colors.blueAccent,
                              value: maloshabit[i].isComplete,
                              onChanged: (bool value) {
                                setState(() {
                                  maloshabit[i].isComplete = value;
                                  print(_seleccionados);
                                });
                              }),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'completeMacrosN');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x80000000),
                              blurRadius: 30.0,
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.greenAccent,
                              Colors.blueAccent,
                            ],
                          )),
                      height: 40,
                      width: 350,
                      child: Center(
                        child: Text(
                          "Siguiente",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class MalHabito {
  String nombreHabito;
  bool isComplete;

  MalHabito(this.nombreHabito, this.isComplete);
}
