import 'package:app_mft/models/list_set.dart';
import 'package:app_mft/models/rutisFisis.dart';
import 'package:app_mft/utils/dbhelper.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class ListExcercisesPage extends StatefulWidget {
  RutisFisi rutisList;
  ListExcercisesPage();

  @override
  _ListExcercisesPageState createState() => _ListExcercisesPageState();
}

class _ListExcercisesPageState extends State<ListExcercisesPage> {
  DbHelper helper = DbHelper();
  RutisFisi rutisList;
  _ListExcercisesPageState();

  List<ListSet> listSets;

  final List<Excercise> ejerciciosF = [
    Excercise('Salto Rodillas', 3, 10, 60, false),
    Excercise('Tijeras', 3, 10, 60, false),
    Excercise('Salto doble', 3, 10, 60, false)
  ];


  List<String> videos = [
    "https://www.youtube.com/watch?v=n_tdMZMamoE",
    "https://www.youtube.com/watch?v=n_tdMZMamoE",
    "https://www.youtube.com/watch?v=n_tdMZMamoE"
  ];

  String videoUrl = "https://www.youtube.com/watch?v=n_tdMZMamoE";
  String videoUrl2 = "https://www.youtube.com/watch?v=n_tdMZMamoE";
  String videoUrl3 = "https://www.youtube.com/watch?v=n_tdMZMamoE";

  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoUrl),
        flags: YoutubePlayerFlags(
          autoPlay: true,
          startAt: 2
        ));
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
          title: Text("Lista de Ejercicios"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(children: [
                  YoutubePlayer(
                    controller: _controller,
                  ),
                  Container(
                    height: 200,
                    child: Expanded(
                      flex: 1,
                      child: ListView.builder(
                        itemCount: ejerciciosF.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                              leading: CircleAvatar(
                                  child: Text(ejerciciosF[index]
                                      .repeticiones
                                      .toString())),
                              title: Text(ejerciciosF[index].nombreExercise));
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

class Excercise {
  String nombreExercise;
  int series;
  int repeticiones;
  int restSet;
  bool isComplete;

  Excercise(this.nombreExercise, this.series, this.repeticiones, this.restSet,
      this.isComplete);
}
