import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
    final String? name;
    final String? email;
    final int? id;

    AuthModel({
        this.name,
        this.email,
        this.id,
    });

    factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        name: json["name"],
        email: json["email"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "id": id,
    };
}
