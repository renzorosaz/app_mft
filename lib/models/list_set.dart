/* sets(id INTEGER PRIMARY KEY,serie INTEGER,repeticiones INTEGER,rest_set INTEGER)'); */

class ListSet {
  int id;
  int idrutisFisis;
  String nombreset;
  int series;
  int repeticiones;
  int restSet;

  ListSet(this.id,this.idrutisFisis,this.nombreset, this.series, this.repeticiones, this.restSet);
  
  Map<String, dynamic> toMap() {
    return {
      'id': id == 0 ? null : id,
      'idrutisFisis':idrutisFisis,
      'nombreset':nombreset,
      'series': series,
      'repeticiones': repeticiones,
      'restSet': restSet,
    };
  }
}
