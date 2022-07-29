import 'package:flutter/material.dart';
import 'package:primesh/chat/widgets/chat_box_multi.dart';
import 'package:primesh/chat/widgets/chat_box_single.dart';
import 'package:primesh/chat/widgets/chat_message_field.dart';
import 'package:primesh/config/config.dart';
import 'package:primesh/db/db_helper.dart';
import 'package:primesh/db/models/message.dart';
import 'package:primesh/utils/widgets/pages_container.dart';

class PrivateRoom extends StatefulWidget {
  final bool isMulti;

  const PrivateRoom({Key? key, required this.isMulti}) : super(key: key);

  @override
  State<PrivateRoom> createState() => _PrivateRoomState();
}

class _PrivateRoomState extends State<PrivateRoom> {
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
    return PagesContainer(
        titlePage: "Saro",
        child: Column(
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
                            children: widget.isMulti
                                ? message.map<ChatBoxMulti>((message) {
                                    return ChatBoxMulti(message: message);
                                  }).toList()
                                : message.map<ChatBoxSingle>((message) {
                                    return ChatBoxSingle(message: message);
                                  }).toList(),
                          );
                  }),
            ),
            SizedBox(
                height: 90,
                child: ChatMessageField(
                  callback: _addNewMessage,
                ))
          ],
        ));
  }
}
