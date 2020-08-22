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
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.center, child: Text("Programas")),
        backgroundColor: Colors.greenAccent,
        
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 300,
                    height: 70,
                    child: Text(
                        "Este espacio ha sido preparado por el equipo de Salud y Bienestar de MFT donde podrás revisar la alimentación y los ejercicios que debes realizar"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("Mi Alimentación")),
                          Container(
                            height: 180,
                            width: 350,
                            child: Image.network(
                              "https://acs2.blob.core.windows.net/imgcatalogo/m/VA_674e942d8f56473bafccf1184a89712c.jpg",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("Mi Ejercicios")),
                          Container(
                            height: 180,
                            width: 350,
                            child: Image.network(
                              "https://acs2.blob.core.windows.net/imgcatalogo/m/VA_674e942d8f56473bafccf1184a89712c.jpg",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Consultas, sugerencias o dudas"),
                      Text("Llamar al +51972685 ó"),
                      Text("Escribir a mfthabits4life@gmail.com"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
