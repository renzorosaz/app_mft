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
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Objetivo Física",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'Exo2',
                )),
            Text("1/3"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
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
    );
  }
}