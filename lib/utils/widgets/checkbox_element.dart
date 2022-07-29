import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:primesh/config/config.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class CheckboxElement extends StatefulWidget {
  const CheckboxElement({Key? key}) : super(key: key);

  @override
  State<CheckboxElement> createState() => _CheckboxElementState();
}

class _CheckboxElementState extends State<CheckboxElement> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: ResponsiveGridList(minItemWidth: 200.0, children: [
        Text("prova 10000000asdasdmasa,dasdl,"),
        Switch(
          activeColor: primaryColor,
          onChanged: (bool value) {
            setState(() {
              isActive = value;
            });
          },
          value: isActive,
        )
      ]),
    );
  }
}
