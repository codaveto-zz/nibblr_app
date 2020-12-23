import 'dart:convert';

CreateResponse createResponseFromJson(String str) => CreateResponse.fromJson(json.decode(str));

String createResponseToJson(CreateResponse data) => json.encode(data.toJson());

class CreateResponse {
  CreateResponse({
    this.status,
    this.user,
    this.accessToken,
  });

  final String status;
  final User user;
  final String accessToken;

  factory CreateResponse.fromJson(Map<String, dynamic> json) => CreateResponse(
    status: json["status"] == null ? null : json["status"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
    accessToken: json["access_token"] == null ? null : json["access_token"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "user": user == null ? null : user.toJson(),
    "access_token": accessToken == null ? null : accessToken,
  };
}

class User {
  User({
    this.name,
    this.email,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  final String name;
  final String email;
  final DateTime updatedAt;
  final DateTime createdAt;
  final int id;

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json["name"] == null ? null : json["name"],
    email: json["email"] == null ? null : json["email"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    id: json["id"] == null ? null : json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "email": email == null ? null : email,
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "id": id == null ? null : id,
  };
}
