import 'package:flutter/material.dart';

class GoalsPage extends StatefulWidget {
  GoalsPage({Key key}) : super(key: key);

  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {

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
       body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/perfil.jpg',
                        ),
                      ),
                    ),
                    height: 350.0,
                  ),
                  Container(
                    height: 350.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.5),
                              Colors.black,
                            ],
                            stops: [
                              1.0,
                              0.5
                            ])),
                  )
                ]),
                Container(
                  width: 250,
                  margin: EdgeInsets.symmetric(horizontal: 120, vertical: 80),
                  child: Column(
                    children: [
                      Title(
                          color: Colors.white,
                          child: Text(
                            "Objetivo",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            textAlign: TextAlign.center,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text("80kg",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)),
                          Icon(
                            Icons.check_circle,
                            color: Colors.greenAccent,
                            size: 20,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text("Sobrepeso",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13)),
                            Icon(
                              Icons.check_circle,
                              color: Colors.greenAccent,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 240,
                        height: 200,
                        child: Center(
                            child: Image.asset(
                          "assets/perfil.jpg",
                          fit: BoxFit.cover,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
        ),
      ),
    );

  }
}