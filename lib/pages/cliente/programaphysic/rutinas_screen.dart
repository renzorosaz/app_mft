import 'package:flutter/material.dart';
import 'package:grocerylist/models/progreFisi.dart';
import 'package:grocerylist/models/rutisFisis.dart';
import 'package:grocerylist/routes/ejercicios_screen.dart';
import 'package:grocerylist/util/dbhelper.dart';

class RutinasFisicasScreen extends StatefulWidget {
  ProgreFisi programList;
  /* 
  RutisFisi rutislist; */

  RutinasFisicasScreen(this.programList);

  @override
  _RutinasFisicasScreenState createState() =>
      _RutinasFisicasScreenState(programList);
}

class _RutinasFisicasScreenState extends State<RutinasFisicasScreen> {
  DbHelper helper = DbHelper();
  ProgreFisi programList;
  _RutinasFisicasScreenState(this.programList);

  List<RutisFisi> listRutinas;

  Future showData() async {
    await helper.openDb();
    await helper.testDb();

    listRutinas = await helper.getRutiFisi(programList.id);

    print(listRutinas.toList());

    setState(() {
      listRutinas = listRutinas;
    });
  }

  @override
  void initState() {
    showData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /* showData(); */
    return Scaffold(
      appBar: AppBar(
        /* title: Text(shoppingList.name), */
        title: Text("Rutinas Fisicas"),
      ),
      body: Column(
        children: [
          /*  RaisedButton(
            onPressed: () async{
                /* await helper.insertItem(ListItem(0,shoppingList.id,"Item Agreado","10kg","obs")); */
                showData();
          }
          ), */
          Expanded(
            child: ListView.builder(
              itemCount: listRutinas != null ? listRutinas.length : 0,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                child:Text(listRutinas[index].id.toString())
              ),
              trailing: IconButton(icon: Icon(Icons.edit), onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) =>  EjerciciosScreen(listRutinas[index])));

              }),
                  title: Text(listRutinas[index].nombre)
                );
              },
            ),
          ),
          
        ],
      ),
    );
  }
}
