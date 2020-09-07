/* progFisi(id INTEGER PRIMARY KEY,idrutisFisis INTEGER,nombre TEXT,duracion INTEGER,FOREIGN KEY(idrutisFisis) REFERENCES rutisFisis(id))'); */ 

class ProgreFisi{

  int id;
  String nombre;
  int duracion;
  int calificacion;
  
  ProgreFisi(this.id,this.nombre,this.duracion,this.calificacion);

  Map<String, dynamic> toMap() {
    return {
      'id': id == 0 ? null : id,
      'nombre': nombre,
      'duracion': duracion,
      'calificacion' :calificacion,
    };
  }
}