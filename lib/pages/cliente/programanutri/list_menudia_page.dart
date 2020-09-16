import 'package:app_mft/models/list_set.dart';
import 'package:app_mft/models/rutisFisis.dart';
import 'package:app_mft/utils/dbhelper.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class ListMenuDiaPage extends StatefulWidget {
  RutisFisi rutisList;
  ListMenuDiaPage();

  @override
  _ListMenuDiaPageState createState() => _ListMenuDiaPageState();
}

class _ListMenuDiaPageState extends State<ListMenuDiaPage> {
  DbHelper helper = DbHelper();
  RutisFisi rutisList;
  _ListMenuDiaPageState();

  List<ListSet> listSets;

  final List<Dieta> listaDieta = [
    Dieta('Taza infusion', 1, 0, false),
    Dieta('Frutas Grandes', 2, 0, false),
  ];

  double kcal = 500.0;

  @override
  void initState() {
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
          title: Text("Alimentos"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(children: [
                  Image.network(
                    'https://fotos00.laopiniondemalaga.es/mmp/2019/09/04/1024x341/desayunos-sanos.jpg',
                    width: 300.0,
                  ),
                  Container(
                    height: 200,
                    child: Expanded(
                      flex: 1,
                      child: ListView.builder(
                        itemCount: listaDieta.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                              leading: CircleAvatar(
                                child:
                                    Text(listaDieta[index].unidad.toString()),
                              ),
                              title: Text(listaDieta[index].alimento));
                        },
                      ),
                    ),
                  ),
                ])
              ],
            ),
          ),
        )

        /* Column(
        children: [
          Container(
            height: 200,
            child: Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: ejerciciosF.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                          child:
                              Text(ejerciciosF[index].repeticiones.toString())),
                      title: Text(ejerciciosF[index].nombreExercise));
                },
              ),
            ),
          ),
          
        ],
      ), */
        );
  }
}

/* Column(
            children: [
            YoutubePlayer(
              controller: _controller,
            ),
          ]) */

class Dieta {
  String alimento;
  int unidad;
  double gramos;
  bool isComplete;

  Dieta(this.alimento, this.unidad, this.gramos, this.isComplete);
}
