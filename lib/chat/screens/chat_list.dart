import 'package:flutter/material.dart';
import 'package:primesh/chat/models/list_element_content.dart';
import 'package:primesh/chat/widgets/chat_list_element.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  ListElementContent lec =
      ListElementContent(name: "Fabrizio", lastMessage: "uocaca");
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [ChatListElement(), ChatListElement(), ChatListElement()],
    );
  }
}
