import 'package:flutter/material.dart';
import 'package:primesh/chat/models/list_element_content.dart';
import 'package:primesh/chat/screens/private_room_widget.dart';
import 'package:primesh/chat/widgets/chat_list_element.dart';
import 'package:primesh/config/config.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  void _goToRoom() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const PrivateRoom(isMulti: false)));
  }

  ListElementContent lec =
      ListElementContent(name: "Fabrizio", lastMessage: "uocaca");
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      decoration: BoxDecoration(
          color: contrast,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(containersCorner),
              topRight: Radius.circular(containersCorner))),
      child: ListView(
        children: [
          ChatListElement(callback: _goToRoom),
          ChatListElement(callback: _goToRoom),
          ChatListElement(callback: _goToRoom)
        ],
      ),
    );
  }
}
