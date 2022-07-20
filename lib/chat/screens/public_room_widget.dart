import 'package:flutter/material.dart';
import 'package:primesh/chat/widgets/chat_box_multi.dart';
import 'package:primesh/chat/widgets/chat_message_field.dart';
import 'package:primesh/db/db_helper.dart';
import 'package:primesh/db/models/message.dart';

class PublicRoom extends StatefulWidget {
  const PublicRoom({Key? key}) : super(key: key);

  @override
  State<PublicRoom> createState() => _PublicRoomState();
}

class _PublicRoomState extends State<PublicRoom> {
  Future<List<Message>> messages = DbHelper.instance.getMessages();
  List<Message> message = [];

  void _addNewMessage(String text) {
    Message prova = Message(
        nodeID: "Roberto", text: text, datetime: "10:10", type: 0, received: 0);
    DbHelper.instance.addMessage(prova);
    setState(() {
      message.insert(0, prova);
    });
  }

  @override
  Widget build(BuildContext context) {
    messages.then((data) => {message = data});
    return Column(
      children: <Widget>[
        Expanded(
          flex: 6,
          child: FutureBuilder(
              future: messages,
              builder: (BuildContext context,
                  AsyncSnapshot<List<Message>> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: Text('Loading...'));
                }
                return snapshot.data!.isEmpty
                    ? const Center(child: Text('No messages.'))
                    : ListView(
                        reverse: true,
                        children: message.map<ChatBoxMulti>((message) {
                          return ChatBoxMulti(message: message);
                        }).toList());
              }),
        ),
        SizedBox(
            height: 90,
            child: ChatMessageField(
              callback: _addNewMessage,
            ))
      ],
    );
  }
}
