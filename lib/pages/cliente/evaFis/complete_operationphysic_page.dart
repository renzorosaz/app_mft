import 'package:flutter/material.dart';

class CompleteOperationPhysicPage extends StatefulWidget {
  CompleteOperationPhysicPage({Key key}) : super(key: key);

  @override
  _CompleteOperationPhysicPageState createState() => _CompleteOperationPhysicPageState();
}

class _CompleteOperationPhysicPageState extends State<CompleteOperationPhysicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operaciones y Lesiones"),
      ),
       body: Center(
        child:Column(
          children: [
            Text("Es necesario conocer tu estado físico para brindarte un programa personalizado"),
            Text("¿ Has tenido lesiones?"),
            TextField(
              decoration: InputDecoration(
                hintText: "Ingresa tu respuesta"
              ),
            ),
            Text("¿Has sufrido de lesiones físicas?"),
            TextField(
              decoration: InputDecoration(
                hintText: "Ingresa tu respuesta"
              ),
            ),
            RaisedButton(
                child: Text("Siguiente"),
                onPressed: (){
                    Navigator.pushNamed(context, 'completeControlF');
              })
          ],
        ) ,
       ),
    );
  }
}