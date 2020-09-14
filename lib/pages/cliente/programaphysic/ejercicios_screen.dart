import 'package:app_mft/models/list_set.dart';
import 'package:app_mft/models/rutisFisis.dart';
import 'package:app_mft/utils/dbhelper.dart';
import 'package:flutter/material.dart';

class EjerciciosScreen extends StatefulWidget {

  RutisFisi rutisList;
EjerciciosScreen(this.rutisList);

  @override
  _EjerciciosScreenState createState() => _EjerciciosScreenState(rutisList);
}

class _EjerciciosScreenState extends State<EjerciciosScreen> {

  DbHelper helper=DbHelper();
  RutisFisi rutisList;
  _EjerciciosScreenState(this.rutisList);

  List<ListSet> listSets;

   Future showData() async {
    await helper.openDb();
    await helper.testDb();

    listSets = await helper.getListSet(rutisList.id);

    print(listSets.toList());

    setState(() {
      listSets = listSets;
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

    return Scaffold(
      appBar: AppBar(
        /* title: Text(shoppingList.name), */
        title: Text("Ejercicios"),
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
              itemCount: listSets != null ? listSets.length : 0,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                child:Text(listSets[index].id.toString())
              ),
              
                  title: Text(listSets[index].nombreset)
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}