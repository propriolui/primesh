import 'package:flutter/material.dart';
import 'package:primesh/config/config.dart';

class ChatListElement extends StatefulWidget {
  final Function callback;

  const ChatListElement({Key? key, required this.callback}) : super(key: key);

  @override
  State<ChatListElement> createState() => _ChatListElementState();
}

class _ChatListElementState extends State<ChatListElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Colors.black45))),
        child: TextButton(
          onPressed: () {
            widget.callback();
          },
          style: ButtonStyle(overlayColor:
              MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.black26;
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return Colors.black12;
            }
            return null;
          })),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
            ),
            Expanded(
                flex: 9,
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 7.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(
                          flex: 2,
                        ),
                        Expanded(
                            flex: 4,
                            child: Text(
                              "Saro",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: chatListElementFontSize),
                            )),
                        const Expanded(
                          flex: 3,
                          child: Text(
                            "cipolleeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        )
                      ],
                    ))),
            const Expanded(
                flex: 1,
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.black54,
                ))
          ]),
        ));
  }
}
