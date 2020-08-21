bool isNumeric(String s) {
  if (s.isEmpty) return false;
  final n = num.tryParse(s);

  return (n == null) ? false : true;
}

bool validarCorreo(String v) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = new RegExp(pattern);
  
  

  return (regExp.hasMatch(v) == true) ? false : true;

}

 bool validarPassword (String p){

   return (p.length >=8) ? false : true;

 }


    
