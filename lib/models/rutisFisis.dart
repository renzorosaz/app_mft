/* rutisFisis(id INTEGER PRIMARY KEY,idSets INTEGER,nombre TEXT,rest_rufi INTEGER,lunes INTEGER,
martes INTEGER,miercoles INTEGER,jueves INTEGER,viernes INTEGER,sabado INTEGER,domingo INTEGER,FOREIGN KEY(idSets) REFERENCES sets(id))'); */

import 'package:app_mft/models/list_set.dart';

class RutisFisi{
  int id;
  int idprogreFisi;
  String nombre;
  int restRufi;
  int lunes;//
  int martes;
  int miercoles;
  int jueves;
  int viernes;
  int sabado;
  int domingo;

  RutisFisi(this.id,this.idprogreFisi,this.nombre,this.restRufi,this.lunes,this.martes,this.miercoles,this.jueves,this.viernes,this.sabado,this.domingo);

  Map<String,dynamic> toMap(){
    return {
      'id': id==0 ? null:id,
      'idprogreFisi': idprogreFisi,
      'nombre':nombre,
      'restRufi':restRufi,
      'lunes': lunes,
      'martes': martes,
      'miercoles': miercoles,
      'jueves': jueves,
      'viernes': viernes,
      'sabado': sabado,
      'domingo': domingo,
    };
  }
}