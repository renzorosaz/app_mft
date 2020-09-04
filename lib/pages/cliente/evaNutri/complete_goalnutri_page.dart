import 'package:flutter/material.dart';

class CompleteGoalNutriPage extends StatefulWidget {
  CompleteGoalNutriPage({Key key}) : super(key: key);

  @override
  _CompleteGoalNutriPageState createState() => _CompleteGoalNutriPageState();
}

class _CompleteGoalNutriPageState extends State<CompleteGoalNutriPage> {
  int objNutricional;
  int objFisico;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Evaluación Estado Nutricional",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'Exo2',
                )),
            Text("1/4"),
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
                'Objetivo Nutricional',
                style: TextStyle(
                    color: Colors.black,
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
                  isExpanded: true,
                  icon: Icon(Icons.check),
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
              height: 25,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 180),
              child: Text(
                'Actividad Física',
                style: TextStyle(
                    color: Colors.black,
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
                  isExpanded: true,
                  icon: Icon(Icons.check),
                  value: objFisico,
                  items: [
                    DropdownMenuItem(child: Text("Muy Activo"), value: 1),
                    DropdownMenuItem(child: Text("Activo"), value: 2),
                    DropdownMenuItem(child: Text("Bajo"), value: 3),
                    DropdownMenuItem(child: Text("Sedentario"), value: 4)
                  ],
                  onChanged: (value) {
                    setState(() {
                      objFisico = value;
                    });
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 80),
              child: Text(
                'Selecciona tus malos hábitos',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontFamily: 'Exo2',
                    fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 40,
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
                            border: Border.all(
                              width: 3,
                              color: Colors.green
                            ),
                            /* boxShadow: [
                              BoxShadow(color: Colors.green, spreadRadius: 3),
                            ], */
                          ),
                          width: 80,
                          height: 80,
                          child: Icon(Icons.food_bank)),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue
                            ),
                            /* boxShadow: [
                              BoxShadow(color: Colors.blue, spreadRadius: 3),
                            ], */
                          ),
                          width: 80,
                          height: 80,
                          child: Icon(Icons.format_align_center_rounded)),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 3,
                              color: Colors.green
                            ),
                            /* boxShadow: [
                              BoxShadow(color: Colors.green, spreadRadius: 3),
                            ], */
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
                            border: Border.all(
                              width: 3,
                              color: Colors.purple
                            ),
                            borderRadius: BorderRadius.circular(10),
                            /* boxShadow: [
                              BoxShadow(color: Colors.purple, spreadRadius: 3),
                            ], */
                          ),
                          width: 80,
                          height: 80,
                          child: Icon(Icons.ac_unit)),
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.teal
                            ),
                            borderRadius: BorderRadius.circular(10),
                            /* boxShadow: [
                              BoxShadow(color: Colors.teal, spreadRadius: 3),
                            ], */
                          ),
                          width: 80,
                          height: 80,
                          child: Icon(Icons.ac_unit)),
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.orangeAccent
                            ),
                            borderRadius: BorderRadius.circular(10),
                            /* boxShadow: [
                              BoxShadow(
                                  color: Colors.orangeAccent, spreadRadius: 3),
                            ], */
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
              padding: const EdgeInsets.symmetric(vertical: 55),
              child: Container(
                width: 350,
                child: RaisedButton(
                    child: Text("Siguiente"),
                    onPressed: () {
                      Navigator.pushNamed(context, 'completeMacrosN');
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
