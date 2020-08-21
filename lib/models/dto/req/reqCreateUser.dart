import 'dart:convert';

ReqCreateUser reqCreateUserFromJson(String str) => ReqCreateUser.fromJson(json.decode(str));
String reqCreateUserToJson(ReqCreateUser data) => json.encode(data.toJson());

class ReqCreateUser {
    ReqCreateUser({
        this.username,
        this.password,
        this.email,
        this.sexo,
        this.profile,
        this.person,
    });
    String username;
    String password;
    String email;
    int sexo;
    int profile;
    Person person; 
    
    factory ReqCreateUser.fromRawJson(String str) => ReqCreateUser.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ReqCreateUser.fromJson(Map<String, dynamic> json) => ReqCreateUser(
        username: json["username"],
        password: json["password"],
        email: json["email"],
        sexo: json["sexo"],
        profile: json["profile"],
        person: Person.fromJson(json["person"]),
    );
    Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "email": email,
        "sexo": sexo,
        "profile": profile,
        "person": person.toJson(),
    };
}

class Person {
    Person({
        this.name,
        this.lastName,
    });
    String name;
    String lastName;
    factory Person.fromJson(Map<String, dynamic> json) => Person(
        name: json["name"],
        lastName: json["lastName"],
    );
    Map<String, dynamic> toJson() => {
        "name": name,
        "lastName": lastName,
    };
}
