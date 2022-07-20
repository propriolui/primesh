import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primesh/config/config.dart';
import 'package:primesh/utils/strings.dart';

class ChatMessageField extends StatelessWidget {
  ChatMessageField({Key? key, required this.callback}) : super(key: key);

  final Function callback;
  final _textController = TextEditingController();
  final _textFocus = FocusNode();

  void submit(String text) {
    callback(text);
  }

  onTextFieldKey(RawKeyEvent event) {
    if (event is RawKeyUpEvent) {
      if (event.logicalKey == LogicalKeyboardKey.enter) {
        String text =
            _textController.text.substring(0, _textController.text.length - 1);
        submit(text);
      } else if (event.data is RawKeyEventDataWeb) {
        final data = event.data as RawKeyEventDataWeb;
        if (data.keyLabel == 'Enter') {
          String text = _textController.text
              .substring(0, _textController.text.length - 1);
          submit(text);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 10,
            child: Container(
                margin: const EdgeInsets.all(15.0),
                child: RawKeyboardListener(
                  onKey: sendWithEnter ? onTextFieldKey : (value) {},
                  focusNode: _textFocus,
                  child: TextField(
                    expands: true,
                    maxLines: null,
                    minLines: null,
                    autofocus: true,
                    textAlignVertical: TextAlignVertical.center,
                    controller: _textController,
                    onEditingComplete: () {},
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(globalRadius)),
                      hintText: hintChatField,
                    ),
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
                      EdgeInsets.all(messageSendButtonPadding)),
                  elevation: MaterialStateProperty.all(5.0)),
              onPressed: () => submit(_textController.text),
              child: const Icon(Icons.send_outlined)),
        )
      ],
    );
  }
}
