import 'package:flutter/material.dart';

class GoalsPage extends StatefulWidget {
  GoalsPage({Key key}) : super(key: key);

  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  List _emojis = ['😃', '😜', '🤓', '😁', '😂', '😞'];
  List _listagrasa = ['10', '15', '20', '25', '30', '35'];

  List _listaimc = [
    'Bajo de peso',
    'Normal',
    'Sobrepeso',
    'Obesidad',
    'Obesidad 2'
  ];

  double _valuePeso = 0.0;
  double _valueGrasa = 0.0;
  double _valueMC = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    Card(
                      elevation: 7,
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Text(
                            "Peso Actual",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '${(_valuePeso*100).toStringAsFixed(2)}',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '${_emojis[_valuePeso.toInt()]}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                children: [
                                  Text("Peso Actual"),
                                  Text(
                             '${(_valuePeso*100).toStringAsFixed(2)}',
                             style: TextStyle(fontSize: 15),
                             ),
                                ],
                              ),
                              Expanded(
                                child: Slider(
                                  value: _valuePeso,
                                  /* label: _emojis[_valuePeso.toInt()], */
                                  min: 0.0,
                                  max: 1.0,
                                  onChangeStart: (double value) {
                                    print('Start value is ' + value.toString());
                                  },
                                  onChangeEnd: (double value) {
                                    print(
                                        'Finish value is ' + value.toString());
                                  },
                                  onChanged: (double value) {
                                    setState(() {
                                      _valuePeso = value;
                                    });
                                  },
                                  activeColor: Colors.blueAccent,
                                  inactiveColor: Colors.black45,
                                ),
                              ),
                              Column(
                                children: [
                                  Text("Meta"),
                                  Text(
                             '${((_valuePeso*100)-5).toStringAsFixed(2)}',
                             style: TextStyle(fontSize: 15),
                             ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      elevation: 7,
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Text(
                            "% Grasa Corporal",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '${_valueGrasa.toStringAsPrecision(3)}',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(_emojis[0], softWrap: true),
                              Expanded(
                                child: Slider(
                                  value: _valueGrasa,
                                  //label: _emojis[_value.toInt()],
                                  min: 0.0,
                                  max: 50.0,
                                  onChangeStart: (double value) {
                                    print('Start value is ' + value.toString());
                                  },
                                  onChangeEnd: (double value) {
                                    print(
                                        'Finish value is ' + value.toString());
                                  },
                                  onChanged: (double value) {
                                    setState(() {
                                      _valueGrasa = value;
                                    });
                                  },
                                  activeColor: Colors.greenAccent,
                                  inactiveColor: Colors.black45,
                                ),
                              ),
                              Text(
                                _emojis[5],
                                softWrap: true,
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    Card(
                      elevation: 7,
                      shadowColor: Colors.black,
                      child: Column(
                        children: [
                          Text(
                            "Indice de Masa Corporal",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "24.97 %",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '${_listaimc[_valueMC.toInt()]}',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(_listaimc[0], softWrap: true),
                              Expanded(
                                child: Slider(
                                  value: _valueMC,
                                  //label: _emojis[_value.toInt()],
                                  min: 0.0,
                                  max: 4.0,
                                  onChangeStart: (double value) {
                                    print('Start value is ' + value.toString());
                                  },
                                  onChangeEnd: (double value) {
                                    print(
                                        'Finish value is ' + value.toString());
                                  },
                                  onChanged: (double value) {
                                    setState(() {
                                      _valueMC = value;
                                    });
                                  },
                                  activeColor: Colors.orangeAccent,
                                  inactiveColor: Colors.black45,
                                ),
                              ),
                              Text(
                                _listaimc[4],
                                softWrap: true,
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
