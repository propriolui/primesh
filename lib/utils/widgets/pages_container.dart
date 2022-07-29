import 'package:flutter/material.dart';
import 'package:primesh/config/config.dart';

class PagesContainer extends StatelessWidget {
  const PagesContainer({Key? key, required this.child, required this.titlePage})
      : super(key: key);

  final Widget child;
  final String titlePage;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          foregroundColor: contrast,
          centerTitle: true,
          title: Text(titlePage),
          elevation: 0,
          toolbarHeight: 80,
        ),
        body: Container(
            color: primaryColor,
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                decoration: BoxDecoration(
                    color: contrast,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(containersCorner),
                        topRight: Radius.circular(containersCorner))),
                child: child))));
  }
}
