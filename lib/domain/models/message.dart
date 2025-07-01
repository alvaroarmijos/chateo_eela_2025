// To parse this JSON data, do
//
//     final message = messageFromJson(jsonString);

import 'dart:convert';

Message messageFromJson(String str) => Message.fromJson(json.decode(str));

String messageToJson(Message data) => json.encode(data.toJson());

class Message {
  final String? message;
  final DateTime messageDate;
  final String? sentyBy;

  Message({this.message, required this.messageDate, this.sentyBy});

  factory Message.fromJson(Map<dynamic, dynamic> json) => Message(
    message: json["message"],
    messageDate: DateTime.parse(json["messageDate"]),
    sentyBy: json["sentBy"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "messageDate": messageDate,
    "sentyBy": sentyBy,
  };

  // Obtener una lista de Messages a partir de un array de Maps
  static List<Message> fromJsonArray(List object) {
    return object.map((item) {
      return Message.fromJson(item);
    }).toList()..sort((a, b) => a.messageDate.compareTo(b.messageDate));
  }
}
