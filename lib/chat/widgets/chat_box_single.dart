import 'package:flutter/material.dart';
import 'package:primesh/db/models/message.dart';
import 'package:primesh/config/config.dart';

class ChatBoxSingle extends StatelessWidget {
  final Message message;

  // ignore: use_key_in_widget_constructors
  const ChatBoxSingle({required this.message});

  @override
  Widget build(BuildContext context) {
    if (message.type == 0) {
      return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Stack(
          children: [
            Container(
              constraints: BoxConstraints(
                  minWidth: ((message.datetime.length + 0.0) * 8),
                  maxWidth: MediaQuery.of(context).size.width - 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(globalRadius),
                  color: messageReceivedColor),
              padding: const EdgeInsets.fromLTRB(5, 5, 6, 20),
              margin:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
              child: Text(
                message.text,
                textDirection: TextDirection.ltr,
                overflow: TextOverflow.clip,
                style:
                    TextStyle(fontSize: messageFontSize, color: Colors.white),
              ),
            ),
            Positioned(
                right: 20,
                bottom: 5,
                child: Text(
                  message.datetime,
                  style: TextStyle(
                      fontSize: messageDateTimeFontSize, color: Colors.white),
                ))
          ],
        )
      ]);
    } else {
      return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Stack(
          children: [
            Container(
              constraints: BoxConstraints(
                  minWidth: ((message.datetime.length + 0.0) * 8),
                  maxWidth: MediaQuery.of(context).size.width - 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(globalRadius),
                  color: messageSendedColor),
              padding: const EdgeInsets.fromLTRB(5, 5, 6, 20),
              margin:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
              child: Text(
                message.text,
                textDirection: TextDirection.rtl,
                overflow: TextOverflow.clip,
                style:
                    TextStyle(fontSize: messageFontSize, color: Colors.white),
              ),
            ),
            Positioned(
                right: 20,
                bottom: 5,
                child: Text(
                  message.datetime,
                  style: TextStyle(
                      fontSize: messageDateTimeFontSize, color: Colors.white),
                ))
          ],
        )
      ]);
    }
  }
}
