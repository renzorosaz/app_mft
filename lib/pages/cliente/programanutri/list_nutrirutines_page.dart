import 'dart:ui';

import 'package:flutter/material.dart';

class ListNutriRutinesPage extends StatefulWidget {
  @override
  _ListNutriRutinesPageState createState() => _ListNutriRutinesPageState();
}

class _ListNutriRutinesPageState extends State<ListNutriRutinesPage> {
  List<String> fecha = [
    'LU 14',
    'MA 15',
    'MI 16',
    'JU 17',
    'VI 18',
    'LU 21',
    'MA 22',
    'MI 23',
    'JU 24',
    'VI 25',
    'LU 28',
    'MA 29',
    'MI 30',
    'JU 01',
    'VI 02',
  ];

/* 
  List<String> rutinas = ["Rutina 1", "Rutina 2", "Rutina 3", "Rutina 4"]; */


  List<bool> values = [false, false, false, false];

  void itemChange(bool val, int index) {
    setState(() {
      values[index] = val;
    });
  }

  final List<MenuDiario> menuD = [
    MenuDiario('Desayuno', false),
    MenuDiario('Almuerzo', false),
    MenuDiario('Cena', false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mis Comidas MFT",
          textAlign: TextAlign.center,
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'home');
            },
            child: Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'calendar');
                },
                child: Icon(Icons.calendar_today)),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 600,
              child: Expanded(
                flex: 1,
                child: ListView.builder(
                    itemCount: fecha.length,
                    itemBuilder: (context, index) => buildRutinas(index)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            BuildCalificar()
          ],
        ),
      ),
    );
  }

  Widget buildRutinas(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    fecha[index].toString(),
                  ),
                  Text("Estado: Completado")
                ],
              ),
            ),
            ExpansionTile(
              title: Text("Comidas Diarias"),
              children: [
                Column(
                  children: [
                    Container(
                      height: 200,
                      child: ListView.builder(
                          itemCount: menuD.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CheckboxListTile(
                                title: Text(menuD[index].name),
                                value: values[index],
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool val) {
                                  itemChange(val, index);
                                });
                            /*  return ListTile(

                                ); */
                          }),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MaterialButton(
                              color: Colors.greenAccent,
                              child: Text("Desayuno",style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                Navigator.pushNamed(context, 'listMenuDia');
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          MaterialButton(
                              color: Colors.greenAccent,
                              child: Text("Almuerzo",style: TextStyle(color: Colors.white)),
                              onPressed: () {}),
                          SizedBox(
                            width: 10,
                          ),
                          MaterialButton(
                              color: Colors.greenAccent,
                              child: Text("Cena",style: TextStyle(color: Colors.white)),
                              onPressed: () {}),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BuildCalificar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'ratePhysic');
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [
              BoxShadow(
                color: Color(0x80000000),
                blurRadius: 5.0,
                offset: Offset(0.0, 2.0),
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
            "Calificar",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}


class MenuDiario {
  String name;
  double gramosproteinas;
  double gramoscarbohidratos;
  double gramosgrasas;
  bool isComplete;

  MenuDiario(this.name, this.isComplete);
}
