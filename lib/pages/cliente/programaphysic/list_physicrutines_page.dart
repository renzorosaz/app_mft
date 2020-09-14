import 'package:app_mft/models/list_set.dart';
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

  List<String> rutinas = ["Rutina 1", "Rutina 2", "Rutina 3", "Rutina 4"];

  List<String> musculo = [
    'Biceps - Espalda',
    'Piernas Pecho',
    'Abs - Cardio',
    'Biceps - Espalda',
    'Piernas Pecho',
    'Abs - Cardio',
    'BONUS SACO'
  ];

  @override
  void initState() {
    super.initState();
  }

  List<bool> values = [false, false, false, false];

  void itemChange(bool val, int index) {
    setState(() {
      values[index] = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mis Ejercicios",
          textAlign: TextAlign.center,
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'programs');
            },
            child: Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.calendar_today),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 600,
            child: Expanded(
              child: ListView.builder(
                  itemCount: fecha.length,
                  itemBuilder: (context, index) => buildRutinas(index)),
            ),
          ),
          SizedBox(height: 30,),
          BuildCalificar()
        ],
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
              title: Text("Rutinas"),
              children: [
                Column(
                  children: [
                    Container(
                      height: 220,
                      child: ListView.builder(
                          itemCount: rutinas.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CheckboxListTile(
                                value: values[index],
                                title: new Text('${rutinas[index]}'),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                onChanged: (bool val) {
                                  itemChange(val, index);
                                });
                          }),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MaterialButton(
                              color: Colors.blueAccent,
                              child: Text("Rutina 1"),
                              onPressed: () {}),
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
                          MaterialButton(
                              color: Colors.blueAccent,
                              child: Text("Rutina 4"),
                              onPressed: () {}),
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
      onTap: (){
            Navigator.pushNamed(context, 'ratePhysic');
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

Card buildSubTaskCard(int index, int i, BuildContext context) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 25,
            child: Row(
              children: [
                IconButton(
                    iconSize: 15,
                    icon: Icon(Icons.edit),
                    onPressed: () async {}),
                IconButton(
                    iconSize: 15,
                    icon: Icon(Icons.delete),
                    onPressed: () async {})
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 25,
                child: IconButton(
                    icon: Icon(Icons.arrow_left), onPressed: () async {}),
              ),
              Container(
                height: 25,
                child: IconButton(
                    icon: Icon(Icons.arrow_right), onPressed: () async {}),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

class RutinaFisica {
  String name;
  bool isComplete;
  List<ListSet> sets = List();

  RutinaFisica(this.name) : isComplete = false;
}
