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

  bool checkedValue = true;
  bool checkedValue2 = true;
  bool checkedValue3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Mis Ejercicios")),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
              children: [
                Column(
                  children: [
                    Text("El dia de hoy de quemar 100 calorias"),
                    CheckboxListTile(
                      title: Text("5 minutos de calentamiento"),
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue;
                        });
                      },
                      controlAffinity:
                          ListTileControlAffinity.leading, //  <-- leading Checkbox
                    ),
                    CheckboxListTile(
                      title: Text("30 Saltos de soga"),
                      value: checkedValue2,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue2 = newValue;
                        });
                      },
                      controlAffinity:
                          ListTileControlAffinity.leading, //  <-- leading Checkbox
                    ),
                    CheckboxListTile(
                      title: Text("10 Abdominales"),
                      value: checkedValue3,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue3 = newValue;
                        });
                      },
                      controlAffinity:
                          ListTileControlAffinity.leading, //  <-- leading Checkbox
                    )
                  ],
                ),
                Divider(height: 30,color: Colors.black,),
                Column(
                  children: [
                    Text("El dia de hoy de quemar 100 calorias"),
                    CheckboxListTile(
                      title: Text("5 minutos de calentamiento"),
                      value: checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue = newValue;
                        });
                      },
                      controlAffinity:
                          ListTileControlAffinity.leading, //  <-- leading Checkbox
                    ),
                    CheckboxListTile(
                      title: Text("30 Saltos de soga"),
                      value: checkedValue2,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue2 = newValue;
                        });
                      },
                      controlAffinity:
                          ListTileControlAffinity.leading, //  <-- leading Checkbox
                    ),
                    CheckboxListTile(
                      title: Text("10 Abdominales"),
                      value: checkedValue3,
                      onChanged: (newValue) {
                        setState(() {
                          checkedValue3 = newValue;
                        });
                      },
                      controlAffinity:
                          ListTileControlAffinity.leading, //  <-- leading Checkbox
                    )
                  ],
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
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, 'ratePhysic');
                                      },
                                      child: Text('Agosto ${fecha[index]}')),
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
        ));
  }
}
