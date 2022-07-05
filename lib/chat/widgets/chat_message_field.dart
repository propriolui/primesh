import 'package:flutter/material.dart';
import 'package:primesh/config/config.dart';
import 'package:primesh/utils/strings.dart';

class ChatMessageField extends StatelessWidget {
  ChatMessageField({Key? key, required this.callback}) : super(key: key);
  final Function callback;
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 10,
            child: Container(
                margin: const EdgeInsets.all(15.0),
                child: TextField(
                  expands: true,
                  maxLines: null,
                  minLines: null,
                  autofocus: true,
                  textAlignVertical: TextAlignVertical.center,
                  controller: textController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(globalRadius)),
                    hintText: hintChatField,
                  ),
                ))),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
          child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      const CircleBorder(side: BorderSide.none)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.all(messageSendButtonPadding)),
                  elevation: MaterialStateProperty.all(5.0)),
              onPressed: () => callback(textController.text),
              child: const Icon(Icons.send_outlined)),
        )
      ],
    );
  }
}
