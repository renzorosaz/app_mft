import 'package:flutter/material.dart';

class ListPhysicRutinesPage extends StatefulWidget {
  @override
  _ListPhysicRutinesPageState createState() => _ListPhysicRutinesPageState();
}

class _ListPhysicRutinesPageState extends State<ListPhysicRutinesPage> {
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

  List<String> musculo = [
    'Biceps - Espalda',
    'Piernas Pecho',
    'Abs - Cardio',
    'Biceps - Espalda',
    'Piernas Pecho',
    'Abs - Cardio',
    'BONUS SACO'
  ];

  List<bool> values = [false, false, false, false];

  void itemChange(bool val, int index) {
    setState(() {
      values[index] = val;
    });
  }

  final List<RutinaFisica> rutinasF = [
    RutinaFisica('Rutina 1', false),
    RutinaFisica('Rutina 2', false),
    RutinaFisica('Rutina 3', false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mis Rutinas MFT",
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
                  Text("Estado: Incompleto")
                ],
              ),
            ),
            ExpansionTile(
              title: Text("Rutinas Física"),
              children: [
                Column(
                  children: [
                    Container(
                      height: 200,
                      child: ListView.builder(
                          itemCount: rutinasF.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CheckboxListTile(
                                title: Text(rutinasF[index].name),
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
                              color: Colors.blueAccent,
                              child: Text("Rutina 1"),
                              onPressed: () {
                                Navigator.pushNamed(context, 'listExcercises');
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          MaterialButton(
                              color: Colors.blueAccent,
                              child: Text("Rutina 2"),
                              onPressed: () {}),
                          SizedBox(
                            width: 10,
                          ),
                          MaterialButton(
                              color: Colors.blueAccent,
                              child: Text("Rutina 3"),
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



class RutinaFisica {
  String name;
  bool isComplete;

  RutinaFisica(this.name, this.isComplete);
}
