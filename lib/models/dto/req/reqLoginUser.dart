import 'dart:convert';

ReqLoginUser reqCreateUserFromJson(String str) => ReqLoginUser.fromJson(json.decode(str));
String reqCreateUserToJson(ReqLoginUser data) => json.encode(data.toJson());

class ReqLoginUser {
    ReqLoginUser({
         this.username,
    this.password,
  });

  String username;
  String password;

  factory ReqLoginUser.fromRawJson(String str) => ReqLoginUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReqLoginUser.fromJson(Map<String, dynamic> json) => ReqLoginUser(
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}

