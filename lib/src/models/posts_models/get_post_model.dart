// To parse this JSON data, do
//
//     final draftsPost = draftsPostFromJson(jsonString);

import 'dart:convert';

GetPosts draftsPostFromJson(String str) => GetPosts.fromJson(json.decode(str));

String draftsPostToJson(GetPosts data) => json.encode(data.toJson());

class GetPosts {
    List<GetPostsData> data;

    GetPosts({
        required this.data,
    });

    factory GetPosts.fromJson(Map<String, dynamic> json) => GetPosts(
        data: List<GetPostsData>.from(json["data"].map((x) => GetPostsData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class GetPostsData {
    int id;
    String userId;
    String title;
    String content;
    String meta;
    String image;
    dynamic video;
    String ipAddress;
    DateTime sentTime;
    dynamic schedule;
    String status;
    DateTime createdAt;
    DateTime updatedAt;
    String imagePath;
    List<String> tags;

    GetPostsData({
        required this.id,
        required this.userId,
        required this.title,
        required this.content,
        required this.meta,
        required this.image,
        this.video,
        required this.ipAddress,
        required this.sentTime,
        this.schedule,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        required this.imagePath,
        required this.tags,
    });

    factory GetPostsData.fromJson(Map<String, dynamic> json) => GetPostsData(
        id: json["id"],
        userId: json["user_id"],
        title: json["title"],
        content: json["content"],
        meta: json["meta"],
        image: json["image"],
        video: json["video"],
        ipAddress: json["ip_address"],
        sentTime: DateTime.parse(json["sent_time"]),
        schedule: json["schedule"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imagePath: json["image_path"],
        tags: List<String>.from(json["tags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "title": title,
        "content": content,
        "meta": meta,
        "image": image,
        "video": video,
        "ip_address": ipAddress,
        "sent_time": sentTime.toIso8601String(),
        "schedule": schedule,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "image_path": imagePath,
        "tags": List<dynamic>.from(tags.map((x) => x)),
    };
}
