import 'package:flutter/material.dart';

class CompleteControlPhysicPage extends StatefulWidget {
  CompleteControlPhysicPage({Key key}) : super(key: key);

  @override
  _CompleteControlPhysicPageState createState() => _CompleteControlPhysicPageState();
}

class _CompleteControlPhysicPageState extends State<CompleteControlPhysicPage> {

  int cmHombro;
  int cmPecho;
  int cmEspalda;
  int cmBrazo;
  int cmAnteb;
  int cmAbdomen;
  int cmGluteo;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Control Físico",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'Exo2',
                )),
            Text("3/3"),
          ],
        ),
      ),
       body: SingleChildScrollView(
                child: Center(
          child:Column(
            children: [
              Container(
                width: 350,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                    "Este control es necesario para finalizando tu programa , visualizar tus mejora corporal",
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
                  'Centimetros de espalda',
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
                    value: cmHombro,
                    items: [
                      DropdownMenuItem(child: Text("100 cm"), value: 1),
                      DropdownMenuItem(child: Text("115cm"), value: 2),
                      DropdownMenuItem(child: Text("118cm"), value: 3),
                      DropdownMenuItem(child: Text("121cm"), value: 4),
                      DropdownMenuItem(child: Text("124cm"), value: 5),
                      DropdownMenuItem(child: Text("127cm"), value: 6),
                      DropdownMenuItem(child: Text("130cm"), value: 7),
                      DropdownMenuItem(child: Text("133cm"), value: 8),
                      DropdownMenuItem(child: Text("136cm"), value: 9),
                      DropdownMenuItem(child: Text("139cm"), value: 10),
                      DropdownMenuItem(child: Text("142cm"), value: 11),
                    ],
                    onChanged: (value) {
                      setState(() {
                        cmHombro = value;
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
                  'Centimetros de hombro',
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
                    value: cmHombro,
                    items: [
                      DropdownMenuItem(child: Text("100 cm"), value: 1),
                      DropdownMenuItem(child: Text("115cm"), value: 2),
                      DropdownMenuItem(child: Text("118cm"), value: 3),
                      DropdownMenuItem(child: Text("121cm"), value: 4),
                      DropdownMenuItem(child: Text("124cm"), value: 5),
                      DropdownMenuItem(child: Text("127cm"), value: 6),
                      DropdownMenuItem(child: Text("130cm"), value: 7),
                      DropdownMenuItem(child: Text("133cm"), value: 8),
                      DropdownMenuItem(child: Text("136cm"), value: 9),
                      DropdownMenuItem(child: Text("139cm"), value: 10),
                      DropdownMenuItem(child: Text("142cm"), value: 11),
                    ],
                    onChanged: (value) {
                      setState(() {
                        cmHombro = value;
                      });
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              
              SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  'Centimetros de pecho',
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
                    value: cmPecho,
                    items: [
                      DropdownMenuItem(child: Text("100cm"), value: 1),
                      DropdownMenuItem(child: Text("105cm"), value: 2),
                      DropdownMenuItem(child: Text("106cm"), value: 3),
                      DropdownMenuItem(child: Text("109cm"), value: 4),
                      DropdownMenuItem(child: Text("110cm"), value: 5),
                      DropdownMenuItem(child: Text("115cm"), value: 6),
                      DropdownMenuItem(child: Text("119cm"), value: 7),
                      DropdownMenuItem(child: Text("120cm"), value: 8),
                      DropdownMenuItem(child: Text("125cm"), value: 9),
                    ],
                    onChanged: (value) {
                      setState(() {
                        cmPecho = value;
                      });
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              
              SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  'Centimetros de brazo',
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
                    value: cmEspalda,
                    items: [
                      DropdownMenuItem(child: Text("30cm"), value: 1),
                      DropdownMenuItem(child: Text("32m"), value: 2),
                      DropdownMenuItem(child: Text("34cm"), value: 3),
                      DropdownMenuItem(child: Text("36cm"), value: 4),
                      DropdownMenuItem(child: Text("38cm"), value: 5),
                      DropdownMenuItem(child: Text("40cm"), value: 6),
                      DropdownMenuItem(child: Text("43cm"), value: 7),
                    ],
                    onChanged: (value) {
                      setState(() {
                        cmEspalda = value;
                      });
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              
              SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  'Centimetros de antebrazo',
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
                    value: cmAnteb,
                    items: [
                      DropdownMenuItem(child: Text("28cm"), value: 1),
                      DropdownMenuItem(child: Text("30cm"), value: 2),
                      DropdownMenuItem(child: Text("32cm"), value: 3),
                      DropdownMenuItem(child: Text("34cm"), value: 4),
                      DropdownMenuItem(child: Text("36cm"), value: 5),
                      DropdownMenuItem(child: Text("37cm"), value: 6),
                      DropdownMenuItem(child: Text("38cm"), value: 7),
                    ],
                    onChanged: (value) {
                      setState(() {
                        cmAnteb = value;
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
                  'Centimetros de abdomen',
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
                    value: cmAbdomen,
                    items: [
                      DropdownMenuItem(child: Text("60 cm - 67 cm"), value: 1),
                      DropdownMenuItem(child: Text("68 cm - 75 cm"), value: 2),
                      DropdownMenuItem(child: Text("76 cm - 83 cm"), value: 3),
                      DropdownMenuItem(child: Text("84 cm - 91 cm"), value: 4),
                    ],
                    onChanged: (value) {
                      setState(() {
                        cmAbdomen = value;
                      });
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  'Centimetros de gluteo',
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
                    value: cmGluteo,
                    items: [
                      DropdownMenuItem(child: Text("60 cm - 67 cm"), value: 1),
                      DropdownMenuItem(child: Text("68 cm - 75 cm"), value: 2),
                      DropdownMenuItem(child: Text("76 cm - 83 cm"), value: 3),
                      DropdownMenuItem(child: Text("84 cm - 91 cm"), value: 4),
                    ],
                    onChanged: (value) {
                      setState(() {
                        cmGluteo = value;
                      });
                    }),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'home');
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
          ) ,
         ),
       ),
    );
  }
}