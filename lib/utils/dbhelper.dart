import 'package:app_mft/models/list_set.dart';
import 'package:app_mft/models/progreFisi.dart';
import 'package:app_mft/models/rutisFisis.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DbHelper {
  int version = 1;
  Database db;

  static const databaseName = 'mftlite2.db';

  
  Future<Database> openDb() async {
    if (db == null) {
      return await openDatabase(join(await getDatabasesPath(), databaseName),
          version: 1, onCreate: (Database db, int version) async {
        db.execute(
            'CREATE TABLE progreFisi(id INTEGER PRIMARY KEY, nombre TEXT, duracion INTEGER, calificacion INTEGER)');
        db.execute(
            'CREATE TABLE rutisFisis(id INTEGER PRIMARY KEY, idprogreFisi INTEGER, nombre TEXT, restRufi INTEGER,lunes INTEGER,martes INTEGER,miercoles INTEGER,jueves INTEGER,viernes INTENGER, sabado INTEGER,domingo INTEGER, FOREIGN KEY(idprogreFisi) REFERENCES progreFisi(id))');
        db.execute(
            'CREATE TABLE listset(id INTEGER PRIMARY KEY,idrutisFisis INTEGER,nombreset TEXT, series INTENGER, repeticiones INTEGER,restSet INTEGER,FOREIGN KEY(idrutisFisis) REFERENCES rutisFisis(id))');
      });
    }
    return db;
  }

  Future testDb() async {
    db = await openDb();

  await db.execute('INSERT INTO progreFisi VALUES (1,"adaptacion1",4,5)');

           await db.execute(
        'INSERT INTO rutisFisis VALUES (1,1,"cardio 1",120,1,0,1,1,0,1,0)');
        await db.execute(
        'INSERT INTO rutisFisis VALUES (2,1,"cardio 2",120,1,0,1,1,0,1,0)');
        await db.execute(
        'INSERT INTO rutisFisis VALUES (3,1,"cardio 3",120,1,0,1,1,0,1,0)');


    await db
        .execute('INSERT INTO listset VALUES (55,1,"salto rodillas",3,10,60)');

    await db.execute('INSERT INTO listset VALUES (56,1,"tijeras",3,10,60)');
    await db.execute('INSERT INTO listset VALUES (57,2,"salto 2",3,10,60)');
    await db.execute('INSERT INTO listset VALUES (58,3,"planchas",3,10,60)');

    List listset = await db.rawQuery("select * from listset");
    List rutisFisis = await db.rawQuery("select * from rutisFisis");
    List progreFisi = await db.rawQuery("select * from progreFisi");
    print(progreFisi.toString());
    print(rutisFisis.toString());
    print(listset.toString());
  }

  Future<int> insertProgreFisi(ProgreFisi list) async {
    int id = await db.insert("progreFisi", list.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  Future<int> insertRutiFisi(RutisFisi list) async {
    int id = await db.insert("rutisFisis", list.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  Future<int> insertSet(ListSet list) async {
    int id = await db.insert("listset", list.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  Future<List<ProgreFisi>> getProgreFisis() async {
    List<Map<String, dynamic>> maps = await db.query('progreFisi');
    return List.generate(
        maps.length,
        (i) => ProgreFisi(maps[i]['id'], maps[i]['nombre'], maps[i]['duracion'],
            maps[i]['calificacion']));
  }

  Future<List<RutisFisi>> getRutiFisis() async {
    List<Map<String, dynamic>> maps = await db.query('rutisFisis');
    return List.generate(
        maps.length,
        (i) => RutisFisi(
            maps[i]['id'],
            maps[i]['idprogreFisi'],
            maps[i]['nombre'],
            maps[i]['restRufi'],
            maps[i]['lunes'],
            maps[i]['martes'],
            maps[i]['miercoles'],
            maps[i]['jueves'],
            maps[i]['viernes'],
            maps[i]['sabado'],
            maps[i]['domingo']));
  }

  Future<List<ListSet>> getSets() async {
    List<Map<String, dynamic>> maps = await db.query('listset');
    return List.generate(
        maps.length,
        (i) => ListSet(
            maps[i]['id'],
            maps[i]['idrutisFisis'],
            maps[i]['nombreset'],
            maps[i]['series'],
            maps[i]['repeticiones'],
            maps[i]['restSet']));
  }

  Future<List<ProgreFisi>> getProgreFisi(int id) async {
    List<Map<String, dynamic>> maps =
        await db.query('progreFisi', where: 'id==?', whereArgs: [id]);
    return List.generate(
        maps.length,
        (i) => ProgreFisi(maps[i]['id'], maps[i]['nombre'], maps[i]['duracion'],
            maps[i]['calificacion']));
  }

  Future<List<RutisFisi>> getRutiFisi(int idprogreFisi) async {
    List<Map<String, dynamic>> maps = await db.query('rutisFisis',
        where: 'idprogreFisi==?', whereArgs: [idprogreFisi]);
    return List.generate(
        maps.length,
        (i) => RutisFisi(
            maps[i]['id'],
            maps[i]['idprogreFisi'],
            maps[i]['nombre'],
            maps[i]['restRufi'],
            maps[i]['lunes'] ,
            maps[i]['martes'],
            maps[i]['miercoles'],
            maps[i]['jueves'],
            maps[i]['viernes'],
            maps[i]['sabado'],
            maps[i]['domingo']));
  }

  Future<List<ListSet>> getListSet(int idrutisFisis) async {
    List<Map<String, dynamic>> maps = await db.query('listset',
        where: 'idrutisFisis==?', whereArgs: [idrutisFisis]);
    return List.generate(
        maps.length,
        (i) => ListSet(
              maps[i]['id'],
              maps[i]['idrutisFisis'],
              maps[i]['nombreset'],
              maps[i]['series'],
              maps[i]['repeticiones'],
              maps[i]['restSet'],
            ));
  }
}