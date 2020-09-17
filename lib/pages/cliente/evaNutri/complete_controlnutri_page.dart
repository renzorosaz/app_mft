import 'package:flutter/material.dart';

class CompleteControlNutriPage extends StatefulWidget {
  @override
  _CompleteControlNutriPageState createState() =>
      _CompleteControlNutriPageState();
}

class _CompleteControlNutriPageState extends State<CompleteControlNutriPage> {
  int cmCintura;
  int cmCadera;
  int cmCuello;

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
            child: Text("3/3",
                style: TextStyle(
                    fontSize: 90, fontFamily: 'Exo', color: Colors.white24))),
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20, top: 90),
                    width: 600,
                    child: Text("Control Nutricional",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Exo',
                            color: Colors.white))),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(top: 90),
                  child: Text(
                      "Este control se estará realizando cada 2 semanas para ver tu avance nutricional",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Exo2',
                      )),
                ),
                SizedBox(
                  height: 15,
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
                  height: 15,
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    'Centimetros de cintura',
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
                      value: cmCintura,
                      items: [
                        DropdownMenuItem(
                            child: Text("60 cm - 67 cm"), value: 1),
                        DropdownMenuItem(
                            child: Text("68 cm - 75 cm"), value: 2),
                        DropdownMenuItem(
                            child: Text("76 cm - 83 cm"), value: 3),
                        DropdownMenuItem(
                            child: Text("84 cm - 91 cm"), value: 4),
                      ],
                      onChanged: (value) {
                        setState(() {
                          cmCintura = value;
                        });
                      }),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    'Centimetros de cadera',
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
                      value: cmCadera,
                      items: [
                        DropdownMenuItem(
                            child: Text("83 cm - 85 cm"), value: 1),
                        DropdownMenuItem(
                            child: Text("86 cm - 92 cm"), value: 2),
                        DropdownMenuItem(
                            child: Text("93 cm - 100 cm"), value: 3),
                        DropdownMenuItem(
                            child: Text("101 cm - 108 cm"), value: 4),
                        DropdownMenuItem(
                            child: Text("109 cm - 116 cm"), value: 4),
                        DropdownMenuItem(
                            child: Text("más de 116 cm"), value: 4),
                      ],
                      onChanged: (value) {
                        setState(() {
                          cmCadera = value;
                        });
                      }),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.only(right: 150),
                  child: Text(
                    'Centimetros de cuello',
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
                      value: cmCuello,
                      items: [
                        DropdownMenuItem(
                            child: Text("37 cm - 38 cm"), value: 1),
                        DropdownMenuItem(
                            child: Text("39 cm - 40 cm"), value: 2),
                        DropdownMenuItem(
                            child: Text("41 cm - 42 cm"), value: 3),
                        DropdownMenuItem(
                            child: Text("43 cm - 44 cm"), value: 4),
                        DropdownMenuItem(
                            child: Text("45 cm - 46 cm"), value: 5),
                      ],
                      onChanged: (value) {
                        setState(() {
                          cmCuello = value;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'showSelectEvas');
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
