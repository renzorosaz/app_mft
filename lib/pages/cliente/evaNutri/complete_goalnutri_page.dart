import 'dart:ui';

import 'package:flutter/material.dart';

class CompleteGoalNutriPage extends StatefulWidget {
  CompleteGoalNutriPage({Key key}) : super(key: key);

  @override
  _CompleteGoalNutriPageState createState() => _CompleteGoalNutriPageState();
}

class _CompleteGoalNutriPageState extends State<CompleteGoalNutriPage>{
  int objNutricional;
  int objFisico;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Objetivo  Nutricional",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'Exo2',
                )),
            Text("1/3"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 350,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                    "Selecciona un objetivo nutricional, tipo de actividad Física y algunos malos hábitos si lo tuvieses de manera consciente para así poder diseñar una mejor experiencia en tu programa nutricional",
                    style: TextStyle(
                      color: Colors.black,
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
                      color: Colors.black,
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
                      color: Colors.blueGrey,
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
                      color: Colors.blueGrey,
                    ),
                    isExpanded: true,
                    icon: Icon(Icons.arrow_drop_down_circle_sharp),
                    value: objNutricional,
                    items: [
                      DropdownMenuItem(child: Text("Bajar de Peso"), value: 1),
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
                      color: Colors.blueGrey,
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3, color: Colors.green),
                            ),
                            width: 80,
                            height: 80,
                            child: Icon(Icons.food_bank)),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3, color: Colors.blue),
                            ),
                            width: 80,
                            height: 80,
                            child: Icon(Icons.format_align_center_rounded)),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3, color: Colors.green),
                            ),
                            width: 80,
                            height: 80,
                            child: Icon(Icons.ac_unit)),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 3, color: Colors.purple),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 80,
                            height: 80,
                            child: Icon(Icons.ac_unit)),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.teal),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 80,
                            height: 80,
                            child: Icon(Icons.ac_unit)),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3, color: Colors.orangeAccent),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 80,
                            height: 80,
                            child: Icon(Icons.food_bank)),
                      ],
                    ),
                  ],
                ),
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
    );
  }
}
