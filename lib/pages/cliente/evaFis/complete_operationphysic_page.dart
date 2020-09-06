import 'package:flutter/material.dart';

class CompleteOperationPhysicPage extends StatefulWidget {
  CompleteOperationPhysicPage({Key key}) : super(key: key);

  @override
  _CompleteOperationPhysicPageState createState() =>
      _CompleteOperationPhysicPageState();
}

class _CompleteOperationPhysicPageState
    extends State<CompleteOperationPhysicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Operaciones y Lesiones",
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
                  "Es necesario conocer tu estado físico para brindarte un programa personalizado",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontFamily: 'Exo2',
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Responder',
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
              width: 350,
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                '¿Has tenido lesiones?',
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
              child: TextField(
                decoration: InputDecoration(hintText: "Ingresa tu respuesta"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                '¿Has tenido operacones?',
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
              child: TextField(
                decoration: InputDecoration(hintText: "Ingresa tu respuesta"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'completeControlF');
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
