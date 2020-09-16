import 'package:flutter/material.dart';

class CompleteMacrosNutriPage extends StatefulWidget {
  @override
  _CompleteMacrosNutriPageState createState() =>
      _CompleteMacrosNutriPageState();
}

class _CompleteMacrosNutriPageState extends State<CompleteMacrosNutriPage> {
  
  int dropActiviValue;
  int cmMuneca;
  int altura;
  int edad;
  int peso;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Distribución Macronutrientes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'Exo2',
                )),
            Text("2/3"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 350,
              margin: EdgeInsets.only(top: 20),
              child: Text(
                  "Con esta información, vamos a calcular la cantidad de macronutrientes que debes consumir al día para lograr tu objetivo",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontFamily: 'Exo2',
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Seleccionar',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Exo2',
                    fontWeight: FontWeight.w700),
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Centimetros de muñeca',
                style: TextStyle(
                    color: Colors.blueGrey,
                      fontSize: 15.0,
                      fontFamily: 'Exo2',
                      fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ),
            Container(
              width: 400,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButton(
                underline: Container(
                  height: 2,
                  color: Colors.blueGrey,
                ),
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down_circle_sharp),
                  value: cmMuneca,
                  items: [
                    DropdownMenuItem(child: Text("menos de 13.9"), value: 1),
                    DropdownMenuItem(
                        child: Text("entre 13.9 - 14.6"), value: 2),
                    DropdownMenuItem(child: Text("más de 14.6"), value: 3),
                    DropdownMenuItem(child: Text("menos de 15.8"), value: 4),
                    DropdownMenuItem(
                        child: Text("entre 15.8 - 16.5"), value: 5),
                    DropdownMenuItem(child: Text("más de 16.5"), value: 6),
                  ],
                  onChanged: (value) {
                    setState(() {
                      cmMuneca = value;
                    });
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Sexo: Hombre : Mujer ',
                style: TextStyle(
                    color: Colors.blueGrey,
                      fontSize: 15.0,
                      fontFamily: 'Exo2',
                      fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Seleccionar',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: 'Exo2',
                    fontWeight: FontWeight.w700),
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Edad',
                style: TextStyle(
                    color: Colors.blueGrey,
                      fontSize: 15.0,
                      fontFamily: 'Exo2',
                      fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ),
            Container(
              width: 400,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButton(
                underline: Container(
                  height: 2,
                  color: Colors.blueGrey,
                ),
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down_circle_sharp),
                  value: edad,
                  items: [
                    DropdownMenuItem(child: Text("18"), value: 1),
                    DropdownMenuItem(child: Text("19"), value: 2),
                    DropdownMenuItem(child: Text("20"), value: 3),
                    DropdownMenuItem(child: Text("21"), value: 4),
                    DropdownMenuItem(child: Text("22"), value: 5),
                    DropdownMenuItem(child: Text("23"), value: 6),
                    DropdownMenuItem(child: Text("24"), value: 7),
                    DropdownMenuItem(child: Text("25"), value: 8),
                    DropdownMenuItem(child: Text("26"), value: 9),
                    DropdownMenuItem(child: Text("27"), value: 10),
                    DropdownMenuItem(child: Text("28"), value: 11),
                    DropdownMenuItem(child: Text("29"), value: 12),
                    DropdownMenuItem(child: Text("30"), value: 13),
                  ],
                  onChanged: (value) {
                    setState(() {
                      edad = value;
                    });
                  }),
            ),
             SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Peso',
                style: TextStyle(
                    color: Colors.blueGrey,
                      fontSize: 15.0,
                      fontFamily: 'Exo2',
                      fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ),
            Container(
              width: 400,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButton(
                underline: Container(
                  height: 2,
                  color: Colors.blueGrey,
                ),
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down_circle_sharp),
                  value: peso,
                  items: [
                    DropdownMenuItem(child: Text("18"), value: 1),
                    DropdownMenuItem(child: Text("19"), value: 2),
                    DropdownMenuItem(child: Text("20"), value: 3),
                    DropdownMenuItem(child: Text("21"), value: 4),
                    DropdownMenuItem(child: Text("22"), value: 5),
                    DropdownMenuItem(child: Text("23"), value: 6),
                    DropdownMenuItem(child: Text("24"), value: 7),
                    DropdownMenuItem(child: Text("25"), value: 8),
                    DropdownMenuItem(child: Text("26"), value: 9),
                    DropdownMenuItem(child: Text("27"), value: 10),
                    DropdownMenuItem(child: Text("28"), value: 11),
                    DropdownMenuItem(child: Text("29"), value: 12),
                    DropdownMenuItem(child: Text("30"), value: 13),
                  ],
                  onChanged: (value) {
                    setState(() {
                      peso = value;
                    });
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Altura',
                style: TextStyle(
                    color: Colors.blueGrey,
                      fontSize: 15.0,
                      fontFamily: 'Exo2',
                      fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ),
            Container(
              width: 400,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButton(
                underline: Container(
                  height: 2,
                  color: Colors.blueGrey,
                ),
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down_circle_sharp),
                  value: altura,
                  items: [
                    DropdownMenuItem(child: Text("1.60"), value: 1),
                    DropdownMenuItem(child: Text("1.61"), value: 2),
                    DropdownMenuItem(child: Text("1.62"), value: 3),
                    DropdownMenuItem(child: Text("1.63"), value: 4),
                    DropdownMenuItem(child: Text("1.64"), value: 5),
                    DropdownMenuItem(child: Text("1.65"), value: 6),
                    DropdownMenuItem(child: Text("1.66"), value: 7),
                    DropdownMenuItem(child: Text("1.67"), value: 8),
                    DropdownMenuItem(child: Text("1.68"), value: 9),
                    DropdownMenuItem(child: Text("1.69"), value: 10),
                    DropdownMenuItem(child: Text("1.70"), value: 11),
                    DropdownMenuItem(child: Text("1.71"), value: 12),
                    DropdownMenuItem(child: Text("1.72"), value: 13),
                    DropdownMenuItem(child: Text("1.73"), value: 14),
                    DropdownMenuItem(child: Text("1.74"), value: 15),
                    DropdownMenuItem(child: Text("1.75"), value: 16),
                    DropdownMenuItem(child: Text("1.76"), value: 17),
                    DropdownMenuItem(child: Text("1.77"), value: 18),
                    DropdownMenuItem(child: Text("1.78"), value: 19),
                    DropdownMenuItem(child: Text("1.79"), value: 20),
                    DropdownMenuItem(child: Text("1.80"), value: 21),
                    DropdownMenuItem(child: Text("1.81"), value: 22),
                    DropdownMenuItem(child: Text("1.82"), value: 23),
                  ],
                  onChanged: (value) {
                    setState(() {
                      altura = value;
                    });
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Actividad Física',
                style: TextStyle(
                    color: Colors.blueGrey,
                      fontSize: 15.0,
                      fontFamily: 'Exo2',
                      fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ),
            Container(
              width: 400,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButton(
                underline: Container(
                  height: 2,
                  color: Colors.blueGrey,
                ),
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down_circle_sharp),
                  value: dropActiviValue,
                  items: [
                    DropdownMenuItem(child: Text("Muy Activo"), value: 1),
                    DropdownMenuItem(child: Text("Activo"), value: 2),
                    DropdownMenuItem(child: Text("Bajo"), value: 3),
                    DropdownMenuItem(child: Text("Sedentario"), value: 4),
                  ],
                  onChanged: (value) {
                    setState(() {
                      dropActiviValue = value;
                    });
                  }),
            ),            
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'completeControlN');
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
                        "Siguiente",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
