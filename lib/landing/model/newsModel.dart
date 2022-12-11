// To parse this JSON data, do
//
//     final landing = landingFromJson(jsonString);

import 'dart:convert';

List<Landing> landingFromJson(String str) => List<Landing>.from(json.decode(str).map((x) => Landing.fromJson(x)));

String landingToJson(List<Landing> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Landing {
    Landing({
        required this.title,
        required this.description,
    });

    String title;
    String description;

    factory Landing.fromJson(Map<String, dynamic> json) => Landing(
        title: json["title"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
    };
}
