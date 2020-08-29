import 'package:flutter/material.dart';

class CompleteControlNutriPage extends StatefulWidget {

  @override
  _CompleteControlNutriPageState createState() => _CompleteControlNutriPageState();
}

class _CompleteControlNutriPageState extends State<CompleteControlNutriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Control Nutricional"),
      ),
       body: Center(
        child:Column(
          children: [
            Text("Este control ayudará al nutricionsita a realizar la distribución adecuada"),
            Text("Ingrese las medidas de"),
            TextField(
              decoration: InputDecoration(
                hintText: "Cintura"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Cadera"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Cuello"
              ),
            ),
            RaisedButton(
                child: Text("Siguiente"),
                onPressed: (){
                    Navigator.pushNamed(context, 'showSelectEvas');
              })
          ],
        ) ,
       ),
    );
  }
}