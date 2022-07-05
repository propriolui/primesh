import 'package:primesh/config/config.dart';

class Message {
  int? id;
  String name;
  String text;
  int counter;
  String dateTime;
  chat_message type;
  bool received;

  Message(
      {this.id,
      required this.name,
      required this.text,
      required this.counter,
      required this.dateTime,
      required this.type,
      required this.received});
}
