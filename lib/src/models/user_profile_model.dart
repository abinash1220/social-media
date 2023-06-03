// To parse this JSON data, do
//
//     final userProfileModel = userProfileModelFromJson(jsonString);

import 'dart:convert';

UserProfileModel userProfileModelFromJson(String str) =>
    UserProfileModel.fromJson(json.decode(str));

String userProfileModelToJson(UserProfileModel data) =>
    json.encode(data.toJson());

class UserProfileModel {
  User user;

  UserProfileModel({
    required this.user,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      UserProfileModel(
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
      };
}

class User {
  int id;
  String roleId;
  String name;
  String email;
  String mobile;
  dynamic clientSecret;
  dynamic clientId;
  String otp;
  dynamic keyName;
  String keyStatus;
  dynamic emailVerifiedAt;
  dynamic address;
  dynamic pincode;
  dynamic city;
  dynamic state;
  dynamic profilePicture;
  String status;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.roleId,
    required this.name,
    required this.email,
    required this.mobile,
    this.clientSecret,
    this.clientId,
    required this.otp,
    this.keyName,
    required this.keyStatus,
    this.emailVerifiedAt,
    this.address,
    this.pincode,
    this.city,
    this.state,
    this.profilePicture,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        roleId: json["role_id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        clientSecret: json["client_secret"],
        clientId: json["client_id"],
        otp: json["otp"],
        keyName: json["Key_name"],
        keyStatus: json["Key_status"],
        emailVerifiedAt: json["email_verified_at"],
        address: json["address"],
        pincode: json["pincode"],
        city: json["city"],
        state: json["state"],
        profilePicture: json["profile_picture"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "role_id": roleId,
        "name": name,
        "email": email,
        "mobile": mobile,
        "client_secret": clientSecret,
        "client_id": clientId,
        "otp": otp,
        "Key_name": keyName,
        "Key_status": keyStatus,
        "email_verified_at": emailVerifiedAt,
        "address": address,
        "pincode": pincode,
        "city": city,
        "state": state,
        "profile_picture": profilePicture,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
