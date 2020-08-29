import 'package:flutter/material.dart';

class CompleteMacrosNutriPage extends StatefulWidget {

  @override
  _CompleteMacrosNutriPageState createState() => _CompleteMacrosNutriPageState();
}

class _CompleteMacrosNutriPageState extends State<CompleteMacrosNutriPage> {

String dropActiviValue = "Sedentario";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Distribucion de macros"),
      ),
       body: Center(
        child:Column(
          children: [
            Text("Al completar este formulario, conocerás la distribución de alimentos diarios"),
            Text("Ingrese la medida de su"),
            TextField(
              decoration: InputDecoration(
                hintText: "Muñeca"
              ),
            ),
            Text("Información básica"),
            Text("Sexo : Masculino - Femenino"),
            TextField(
              decoration: InputDecoration(
                hintText: "Edad"
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Altura"
              ),
            ),
            Text('Actividad Física'),
            DropdownButton<String>(
                value: dropActiviValue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.blue),
                underline: Container(
                  height: 2,
                  color: Colors.blue,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropActiviValue = newValue;
                  });
                },
                items: <String>['Muy Activo', 'Activo', 'Bajo', 'Sedentario']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              RaisedButton(
                child: Text("Siguiente"),
                onPressed: (){
                    Navigator.pushNamed(context, 'completeControlN');
              })
          ],
        ) ,
       ),
    );
  }
}