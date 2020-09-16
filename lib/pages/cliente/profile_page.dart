import 'package:app_mft/widgets/radial_progress.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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
                                  "24.97 %",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 125,
                          child: Card(
                            child: Column(
                              children: [
                                Text(
                                  "Calorias Diarias",
                                  style: TextStyle(fontSize: 18, ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "2195kcal",
                                  style: TextStyle(fontSize: 15),

                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 125,
                          child: Card(
                            child: Column(
                              children: [
                                Text(
                                  "% Grasa Corporal",
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "19.95%",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
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
                  child: Text("Distribución de Macronutrientes",style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey)),
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
                  CustomRadialProgress(porcentaje: 100.0, cantidad: 180, color: Colors.black54),
                  CustomRadialProgress(porcentaje: 100.0 ,cantidad: 220, color: Colors.black54),
                  CustomRadialProgress(porcentaje: 100.0,cantidad: 80, color: Colors.black54),
                ],
              ),
              Text("Post Realizados",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey)),
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
  final double cantidad;

  /* 
  final String tipomacro; */

  const CustomRadialProgress({
    @required this.porcentaje,
    @required this.color,
    this.cantidad,
    /* 
    @required this.tipomacro, */
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Stack(
        children: [
          RadialProgress(
            porcentaje: porcentaje,
            colorPrimario: this.color,
            grosorPrimario: 5,
            grosorSecundario: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Text('$cantidad'"g"),
          ),
        ],
      ),
      /* Text(tipomacro.toString()) */
    );
  }
}
