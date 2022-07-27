import 'package:flutter/material.dart';
import 'package:primesh/config/config.dart';

class ListElement extends StatelessWidget {
  const ListElement(
      {Key? key,
      required this.callback,
      required this.icon,
      required this.name,
      required this.description})
      : super(key: key);
  final Function callback;
  final Icon icon;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: TextButton(
          onPressed: () {
            callback(name);
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
            SizedBox(
              height: 70,
              width: 70,
              child: icon,
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
                              name,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: chatListElementFontSize,
                              ),
                            )),
                        Expanded(
                          flex: 3,
                          child: Text(
                            description,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.black54),
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
