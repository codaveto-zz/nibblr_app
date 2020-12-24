import 'dart:convert';

ErrorResponse errorResponseFromJson(String str) => ErrorResponse.fromJson(json.decode(str));

String errorResponseToJson(ErrorResponse data) => json.encode(data.toJson());

class ErrorResponse {
  ErrorResponse({
    this.status,
    this.code,
    this.message,
    this.errors,
  });

  final String status;
  final int code;
  final String message;
  final Errors errors;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => ErrorResponse(
        status: json["status"] == null ? null : json["status"],
        code: json["code"] == null ? null : json["code"],
        message: json["message"] == null ? null : json["message"],
        errors: json["errors"] == null ? null : Errors.fromJson(json["errors"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "code": code == null ? null : code,
        "message": message == null ? null : message,
        "errors": errors == null ? null : errors.toJson(),
      };
}

class Errors {
  Errors({
    this.name,
    this.email,
    this.password,
  });

  final List<String> name;
  final List<String> email;
  final List<String> password;

  factory Errors.fromJson(Map<String, dynamic> json) => Errors(
        name: json["name"] == null ? null : List<String>.from(json["name"].map((x) => x)),
        email: json["email"] == null ? null : List<String>.from(json["email"].map((x) => x)),
        password: json["password"] == null ? null : List<String>.from(json["password"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : List<dynamic>.from(name.map((x) => x)),
        "email": email == null ? null : List<dynamic>.from(email.map((x) => x)),
        "password": password == null ? null : List<dynamic>.from(password.map((x) => x)),
      };
}
