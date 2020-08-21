// To parse this JSON data, do
//
//     final resCreateUser = resCreateUserFromJson(jsonString);

import 'dart:convert';

ResCreateUser resCreateUserFromJson(String str) => ResCreateUser.fromJson(json.decode(str));

String resCreateUserToJson(ResCreateUser data) => json.encode(data.toJson());

class ResCreateUser {
  ResCreateUser({
    this.message,
    this.status,
    this.data,
    this.error,
  });

  String message;
  int status;
  Data data;
  Error error;

  factory ResCreateUser.fromRawJson(String str) => ResCreateUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResCreateUser.fromJson(Map<String, dynamic> json) => ResCreateUser(
        message: json["message"],
        status: json["status"],
        data: json["data"] != null ? Data.fromJson(json["data"]) : null,
        error: json["error"] != null ? Error.fromJson(json["error"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
        "data": data.toJson(),
        "error": error.toJson(),
      };
}

class Data {
  Data({
    this.user,
  });

  User user;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
      };
}

class User {
  User({
    this.id,
    this.username,
    this.email,
    this.isPremium,
    this.person,
    this.profile,
  });

  int id;
  String username;
  String email;
  bool isPremium;
  Person person;
  Profile profile;

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        isPremium: json["is_premium"],
        person: Person.fromJson(json["person"]),
        profile: Profile.fromJson(json["profile"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "is_premium": isPremium,
        "person": person.toJson(),
        "profile": profile.toJson(),
      };
}

class Person {
  Person({
    this.name,
    this.lastName,
  });

  String name;
  String lastName;

  factory Person.fromRawJson(String str) => Person.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Person.fromJson(Map<String, dynamic> json) => Person(
        name: json["name"],
        lastName: json["last_name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "last_name": lastName,
      };
}

class Profile {
  Profile({
    this.id,
    this.name,
  });

  int id;
  String name;

  factory Profile.fromRawJson(String str) => Profile.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Error {
  Error({
    this.code,
    this.title,
    this.description,
  });

  String code;
  String title;
  String description;

  factory Error.fromRawJson(String str) => Error.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        code: json["code"],
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "title": title,
        "description": description,
      };
}