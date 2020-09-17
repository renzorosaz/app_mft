import 'package:flutter/material.dart';

class CompleteGoalPhysPage extends StatefulWidget {
  CompleteGoalPhysPage({Key key}) : super(key: key);

  @override
  _CompleteGoalPhysPageState createState() => _CompleteGoalPhysPageState();
}

class _CompleteGoalPhysPageState extends State<CompleteGoalPhysPage> {
  int objFisico;

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
                    child: Text("Objetivo  Físico",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Exo',
                            color: Colors.white))),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                      "Selecciona un objetivo físico de manera consciente para así poder diseñar una mejor experiencia en tu programa nutricional",
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
                  width: 400,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: DropdownButton(
                      underline: Container(
                        height: 2,
                        color: Colors.blueGrey,
                      ),
                      isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down_circle_sharp),
                      value: objFisico,
                      items: [
                        DropdownMenuItem(child: Text("Gana Fuerza"), value: 1),
                        DropdownMenuItem(child: Text("Tonificar"), value: 2),
                        DropdownMenuItem(
                            child: Text("Aumentar Masa Muscular"), value: 3)
                      ],
                      onChanged: (value) {
                        setState(() {
                          objFisico = value;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'completeOperatF');
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
