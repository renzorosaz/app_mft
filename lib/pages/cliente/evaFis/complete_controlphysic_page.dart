import 'package:flutter/material.dart';

class CompleteControlPhysicPage extends StatefulWidget {
  CompleteControlPhysicPage({Key key}) : super(key: key);

  @override
  _CompleteControlPhysicPageState createState() => _CompleteControlPhysicPageState();
}

class _CompleteControlPhysicPageState extends State<CompleteControlPhysicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Control Físico"),
      ),
       body: Center(
        child:Column(
          children: [
            Text("Este control es necesario para finalizando tu programa , visualizar tus mejora corporal"),
            Text("Ingrese las medidas de"),
            TextField(
              decoration: InputDecoration(
                hintText: "Hombros"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Pecho"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Espalda"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Brazo"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Abdomen"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Glúteo"
              ),
            ),
            RaisedButton(
                child: Text("Siguiente"),
                onPressed: (){
                    Navigator.pushNamed(context, 'profClie');
              })
          ],
        ) ,
       ),
    );
  }
}