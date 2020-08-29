import 'package:flutter/material.dart';

class CompleteGoalPhysPage extends StatefulWidget {
  CompleteGoalPhysPage({Key key}) : super(key: key);

  @override
  _CompleteGoalPhysPageState createState() => _CompleteGoalPhysPageState();
}

class _CompleteGoalPhysPageState extends State<CompleteGoalPhysPage> {
  int objFisico;
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Objetivo Físico"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Cual es objetivo que deseas lograr"),
            DropdownButton(
                icon: Icon(Icons.send),
                value: objFisico,
                items: [
                  DropdownMenuItem(child: Text("Ganar Fuerza"), value: 1),
                  DropdownMenuItem(child: Text("Ganar Resistencia"), value: 2),
                  DropdownMenuItem(
                      child: Text("Ganar Masa Muscular"), value: 3)
                ],
                onChanged: (value) {
                  setState(() {
                    objFisico = value;
                  });
                }),
                RaisedButton(
                child: Text("Siguiente"),
                onPressed: (){
                    Navigator.pushNamed(context, 'completeOperatF');
              })
          ],
        ),
      ),
    );
  }
}