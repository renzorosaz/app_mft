import 'package:app_mft/widgets/radial_progress.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


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

  double porcentaje = 0;

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
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
                ),
                Container(
                  padding: EdgeInsets.only(top: 70),
                  child: Column(
                    children: [
                      Title(
                          color: Colors.white,
                          child: Text(
                            "Renzo Rosas",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            textAlign: TextAlign.center,
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 125),
                        child: Row(
                          children: [
                            Text("renzo.rovi@gmail.com",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                            Icon(
                              Icons.check_circle,
                              color: Colors.greenAccent,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 140),
                        child: Row(
                          children: [
                            Text("+51 972 696 048",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                            Icon(
                              Icons.check_circle,
                              color: Colors.greenAccent,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        child: Image.asset(
                          "assets/perfil.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 120,
                          child: Column(
                            children: [
                              Text(
                                "Indice de Masa Corporal",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "Resultado : 24.97 %",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Column(
                            children: [
                              Text(
                                "Calorias Diarias",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "Resultado : 2195kcal",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Column(
                            children: [
                              Text(
                                "Indice de Grasa Corporal",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "Resultado : 19.95%",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 250,
                  height: 20,
                  child: Text("Distribución de Macronutrientes"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Proteinas"),
                  Text("Carbohidratos"),
                  Text("Grasas"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  /* CustomRadialProgress(porcentaje: porcentajeProte, color: Colors.greenAccent,tipomacro: 'Proteinas',),//proteinas
                  CustomRadialProgress(porcentaje: porcentajeCarbo, color: Colors.greenAccent[200],tipomacro: 'Carbohidratos',),
                  CustomRadialProgress(porcentaje: porcentajeGrasa, color: Colors.greenAccent[100],tipomacro: 'Grasa',),  //carbohidratos */
                  CustomRadialProgress(
                      porcentaje: porcentaje, color: Colors.black54),
                  CustomRadialProgress(
                      porcentaje: porcentaje, color: Colors.black54),
                  CustomRadialProgress(
                      porcentaje: porcentaje, color: Colors.black54),
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
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    padding: const EdgeInsets.all(8),
                    itemCount: dia.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 100,
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
      ),
    );
  }
}

class ItemLista {
  String item;
  int cantidad;
}

class CustomRadialProgress extends StatelessWidget {
  final Color color;
  final double porcentaje;
  /* 
  final String tipomacro; */

  const CustomRadialProgress({
    @required this.porcentaje,
    @required this.color,
    /* 
    @required this.tipomacro, */
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: RadialProgress(
        porcentaje: this.porcentaje,
        colorPrimario: this.color,
        colorSecundario: Colors.blueAccent,
        grosorPrimario: 5,
        grosorSecundario: 5,
      ),
      /* Container(
              padding: EdgeInsets.symmetric(horizontal:30,vertical:40),
              child: Text('$porcentaje %'),
            ), */

      /* Text(tipomacro.toString()) */
    );
  }
}
