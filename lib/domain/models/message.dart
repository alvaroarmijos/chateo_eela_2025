// To parse this JSON data, do
//
//     final message = messageFromJson(jsonString);

import 'dart:convert';

Message messageFromJson(String str) => Message.fromJson(json.decode(str));

String messageToJson(Message data) => json.encode(data.toJson());

class Message {
  final String? message;
  final String? messageDate;
  final String? sentyBy;

  Message({this.message, this.messageDate, this.sentyBy});

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    message: json["message"],
    messageDate: json["messageDate"],
    sentyBy: json["sentyBy"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "messageDate": messageDate,
    "sentyBy": sentyBy,
  };
}
