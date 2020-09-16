import 'package:flutter/material.dart';

class GoalsPage extends StatefulWidget {
  GoalsPage({Key key}) : super(key: key);

  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  

  double _valuePeso = 80.0;
  double _slidePeso = 80.0;

  var selectRangePeso = RangeValues(80.0, 0.8);

  double _valueGrasa = 23.0;
  double _slideGrasa = 23.0;

  double _valueIMC = 24.0;
  double _slideIMC = 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Evaluaciónes",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        fontSize: 20)),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ultima evaluación "),
                        Text("Próxima evaluación ")
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("11 de Julio 2020"),
                        Text("25 de Julio 2020 ")
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      width: 125,
                      child: Card(
                        child: Column(
                          children: [
                            Text(
                              "Peso Actual",
                              style: TextStyle(fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "$_valuePeso",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Card(
                        child: Column(
                          children: [
                            Text(
                              "Peso Recomendado",
                              style: TextStyle(fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "${_valuePeso - 5}",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: Slider(
                    value: _slidePeso,
                    min: 0.0,
                    max: 100.0,
                    divisions: 100,
                    label: '${_slideGrasa.round()}',
                    onChanged: (double value) {
                      setState(() {
                        print(value);
                        _slidePeso = value;
                      });
                    },
                    activeColor: Colors.blueAccent,
                    inactiveColor: Colors.blueGrey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 125,
                      child: Card(
                        child: Column(
                          children: [
                            Text(
                              "% Grasa Corporal",
                              style: TextStyle(fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "$_valueGrasa",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Card(
                        child: Column(
                          children: [
                            Text(
                              "%Grasa Corporal Recomendada",
                              style: TextStyle(fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "${_valueGrasa - 5.0}",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
               
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: Slider(
                    value: _slideGrasa,
                    min: 0.0,
                    max: 50.0,
                    divisions: 50,
                    label: '${_slideGrasa.round()}',
                    onChanged: (double value) {
                      setState(() {
                        print(value);
                        _slideGrasa = value;
                      });
                    },
                    activeColor: Colors.blueAccent,
                    inactiveColor: Colors.blueGrey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 125,
                      child: Card(
                        child: Column(
                          children: [
                            Text(
                              "Indice de Masa Corporal",
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "$_valueIMC",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Card(
                        child: Column(
                          children: [
                            Text(
                              "Indice de Masa Corporal Recomendada",
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "${_valueIMC-5}",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: Slider(
                    value: _slideIMC,
                    min: 10.0,
                    max: 40.0,
                    divisions: 40,
                    label: '${_slideIMC.round()}',
                    onChanged: (double value) {
                      setState(() {
                        print(value);
                        _slideIMC = value;
                      });
                    },
                    activeColor: Colors.blueAccent,
                    inactiveColor: Colors.blueGrey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
