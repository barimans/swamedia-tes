import 'dart:convert';

List<SplashModel> userModelFromMap(String str) =>
    List<SplashModel>.from(json.decode(str).map((x) => SplashModel.fromMap(x)));

String userModelToMap(List<SplashModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class SplashModel {
  SplashModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  factory SplashModel.fromMap(Map<String, dynamic> json) => SplashModel(
    id: json["id"],
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "avatar": avatar,
  };
}