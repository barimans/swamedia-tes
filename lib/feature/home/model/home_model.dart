import 'dart:convert';

List<HomeModel> userModelFromMap(String str) =>
    List<HomeModel>.from(json.decode(str).map((x) => HomeModel.fromMap(x)));

String userModelToMap(List<HomeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class HomeModel {
  HomeModel({
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

  factory HomeModel.fromMap(Map<String, dynamic> json) => HomeModel(
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