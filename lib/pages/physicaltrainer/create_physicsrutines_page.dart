import 'package:app_mft/models/progreFisi.dart';
import 'package:app_mft/models/rutisFisis.dart';
import 'package:app_mft/pages/cliente/programaphysic/list_exercises_page.dart';
import 'package:app_mft/utils/dbhelper.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreatePhysicRutinesPage extends StatefulWidget {
  ProgreFisi programList;
  /* 
  RutisFisi rutislist; */

  CreatePhysicRutinesPage();

  @override
  _CreatePhysicRutinesPageState createState() =>
      _CreatePhysicRutinesPageState();
}

class _CreatePhysicRutinesPageState extends State<CreatePhysicRutinesPage> {
  DbHelper helper = DbHelper();
  ProgreFisi programList;
  _CreatePhysicRutinesPageState();

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
                  MaterialPageRoute(builder: (c) =>  ListExcercisesPage()));

              }),
                  title: Text(listRutinas[index].nombre)
                );
              },
            ),
          ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/create'),
        child: Icon(Icons.add)
      ),
    );
  }
}
