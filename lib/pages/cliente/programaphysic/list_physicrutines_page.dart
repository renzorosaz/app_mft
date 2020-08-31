import 'package:flutter/material.dart';

class ListPhysicRutinesPage extends StatefulWidget {
  ListPhysicRutinesPage({Key key}) : super(key: key);

  @override
  _ListPhysicRutinesPageState createState() => _ListPhysicRutinesPageState();
}

class _ListPhysicRutinesPageState extends State<ListPhysicRutinesPage> {
  
  final List<String> fecha = <String>['22', '23', '24', '25', '26', '27', '28'];
  final List<String> dia = <String>[
    'Lunes',
    'Martes',
    'Miercoles',
    'Jueves',
    'Viernes',
    'Sábado',
    'Domingo'
  ];
  final List<String> musculo = <String>[
    'Biceps - Espalda',
    'Piernas Pecho',
    'Abs - Cardio',
    'Biceps - Espalda',
    'Piernas Pecho',
    'Abs - Cardio',
    'BONUS SACO'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Mis Ejercicios")
      ),
       body: Column(
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 229),
                    child: Text("ACTIVIDADES",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.grey)),
                  ),
                  Text(
                    "VER TODO",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              width: 420,
              height: 398,
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  padding: const EdgeInsets.all(8),
                  itemCount: dia.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 80,
                      child: Center(
                          child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('${fecha[index]}'),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Agosto ${fecha[index]}'),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.work),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Músculo ${musculo[index]}'),
                        ],
                      )),
                    );
                  }),
            )
          ],
       )
    );
  }
}