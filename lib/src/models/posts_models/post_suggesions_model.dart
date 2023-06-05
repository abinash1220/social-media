// To parse this JSON data, do
//
//     final postSuggesionsModel = postSuggesionsModelFromJson(jsonString);

import 'dart:convert';

PostSuggesionsModel postSuggesionsModelFromJson(String str) =>
    PostSuggesionsModel.fromJson(json.decode(str));

String postSuggesionsModelToJson(PostSuggesionsModel data) =>
    json.encode(data.toJson());

class PostSuggesionsModel {
  List<Postsuggestion> postsuggestion;

  PostSuggesionsModel({
    required this.postsuggestion,
  });

  factory PostSuggesionsModel.fromJson(Map<String, dynamic> json) =>
      PostSuggesionsModel(
        postsuggestion: List<Postsuggestion>.from(
            json["postsuggestion"].map((x) => Postsuggestion.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "postsuggestion":
            List<dynamic>.from(postsuggestion.map((x) => x.toJson())),
      };
}

class Postsuggestion {
  int id;
  String title;
  String description;
  DateTime createdAt;
  DateTime updatedAt;
  List<String> images;

  Postsuggestion({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.images,
  });

  factory Postsuggestion.fromJson(Map<String, dynamic> json) => Postsuggestion(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}
