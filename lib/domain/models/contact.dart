// To parse this JSON data, do
//
//     final contact = contactFromJson(jsonString);

import 'dart:convert';

Contact contactFromJson(String str) => Contact.fromJson(json.decode(str));

String contactToJson(Contact data) => json.encode(data.toJson());

class Contact {
  final String? name;
  final String? photoUrl;
  final bool status;

  Contact({this.name, this.photoUrl, required this.status});

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    name: json["name"],
    photoUrl: json["photoUrl"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "photoUrl": photoUrl,
    "status": status,
  };
}
