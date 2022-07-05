import 'package:flutter/material.dart';
import 'package:primesh/chat/models/message.dart';
import 'package:primesh/chat/widgets/chat_box_single.dart';
import 'package:primesh/config/config.dart';

class PrivateRoom extends StatefulWidget {
  const PrivateRoom({Key? key}) : super(key: key);

  @override
  State<PrivateRoom> createState() => _PrivateRoomState();
}

class _PrivateRoomState extends State<PrivateRoom> {
  Message message = Message(
      name: "saro",
      text: "prova",
      counter: 1,
      dateTime: "18/05",
      type: chat_message.sended,
      received: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChatBoxSingle(message: message),
      ),
    );
  }
}
