import 'package:flutter/material.dart';

class CompleteGoalNutriPage extends StatefulWidget {
  CompleteGoalNutriPage({Key key}) : super(key: key);

  @override
  _CompleteGoalNutriPageState createState() => _CompleteGoalNutriPageState();
}

class _CompleteGoalNutriPageState extends State<CompleteGoalNutriPage> {
  int objNutricional;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Objetivo Nutricional"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Cual es objetivo que deseas lograr"),
            DropdownButton(
                icon: Icon(Icons.send),
                value: objNutricional,
                items: [
                  DropdownMenuItem(child: Text("Bajar de Peso"), value: 1),
                  DropdownMenuItem(child: Text("Tonificar"), value: 2),
                  DropdownMenuItem(
                      child: Text("Aumentar Masa Muscular"), value: 3)
                ],
                onChanged: (value) {
                  setState(() {
                    objNutricional = value;
                  });
                }),
                RaisedButton(
                child: Text("Siguiente"),
                onPressed: (){
                    Navigator.pushNamed(context, 'completeMacrosN');
              })
          ],
        ),
      ),
    );
  }
}
