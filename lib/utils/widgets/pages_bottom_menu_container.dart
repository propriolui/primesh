import 'package:flutter/material.dart';
import 'package:primesh/config/config.dart';

class PagesBottomMenuContainer extends StatelessWidget {
  const PagesBottomMenuContainer({Key? key, required this.child})
      : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return (Container(
        margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
        decoration: BoxDecoration(
            color: contrast,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(containersCorner),
                topRight: Radius.circular(containersCorner))),
        child: child));
  }
}
