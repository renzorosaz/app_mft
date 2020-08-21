import 'dart:convert';
import 'dart:io';

import 'package:app_mft/models/dto/req/reqLoginUser.dart';
import 'package:app_mft/models/dto/res/resLoginUser.dart';




class UsuariosProvider {
  /* final String _url = 'http://-env.eba-adrxrxrh.sa-east-1.elasticbeanstalk.com';
  final String _url2 = 'https://flutter-variosmayo.firebaseio.com'; */
  
  /* final String _backcreate='http://192.168.1.62:8080/user/create';
   final String _backlistar = 'http://192.168.1.62:8080/user/all';
    final String _backlogin = 'http://192.168.1.62:8080/user/login'; */
    
  
  Future<ReqLoginUser> login(ReqLoginUser user) async {

  ReqLoginUser req = new ReqLoginUser();
  req.username = user.username;
  req.password = user.password;

  HttpClientRequest httpClientRequest =
      await HttpClient().post("192.168.1.62", 8080, "user/login")
        ..headers.contentType = ContentType.json
        ..write(req.toRawJson());


  HttpClientResponse httpClientResponse = await httpClientRequest.close();

  await utf8.decoder.bind(httpClientResponse).forEach((response) {
    print(response);
    ResLoginUser res = ResLoginUser.fromRawJson(response);

    if (res.status == 1) {
      print("EXITO");
      User user = res.data.user;
      print("user: " + user.username);
    } else if (res.status == -1) {
      print("ERROR");
      Error error = res.error;
      print("code: " + error.code);
      print("title: " + error.title);
      print("description: " + error.description);
    }
  });
  }

}