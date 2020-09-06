import 'package:flutter/material.dart';

class ProgramsPage extends StatefulWidget {
  ProgramsPage({Key key}) : super(key: key);

  @override
  _ProgramsPageState createState() => _ProgramsPageState();
}

class _ProgramsPageState extends State<ProgramsPage> {
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
    return new Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Container(
              width: 325,
              margin: EdgeInsets.only(top: 20),
              child: Text(
                  "Este espacio ha sido preparado por el equipo de Salud y Bienestar de MFT donde podrás revisar la alimentación y los ejercicios que debes realizar",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontFamily: 'Exo2',
                  )),
            ),
            _CardsProgramas(),
          ]),
        ),
      ),
    );
  }
}

class _CardsProgramas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            child: Text(
              'DALE CON TODO EL PODER',
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
            width: 600,
            padding: const EdgeInsets.only(right: 50),
            child: Text('MI PROGRAMA NUTRICIONAL',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontSize: 15.0,
                  fontFamily: 'Exo2',
                )),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
              /* onTap: () {
            Navigator.pushNamed(context, 'completeGoalN');
          }, */
              child: Container(
            width: 650,
            height: 150,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  image: DecorationImage(
                    image: ExactAssetImage('assets/proNutri.jpg'),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3), BlendMode.darken),
                    fit: BoxFit.cover,
                  )),
            ),
          )),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 600,
            padding: const EdgeInsets.only(right: 50),
            child: Text('MI PROGRAMA FISICO',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontSize: 15.0,
                  fontFamily: 'Exo2',
                )),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'listPhysicRutines');
            },
            child: Container(
              width: 400,
              height: 150,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    image: DecorationImage(
                      image: ExactAssetImage('assets/evaphysic.jpg'),
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 325,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Consultas, sugerencias o dudas",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontFamily: 'Exo2',
                    )),
                Text("Llamar al +51972685 ó",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontFamily: 'Exo2',
                    )),
                Text("Escribir a mfthabits4life@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontFamily: 'Exo2',
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
