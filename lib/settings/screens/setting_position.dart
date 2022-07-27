import 'package:flutter/material.dart';

class SettingPosition extends StatefulWidget {
  const SettingPosition({Key? key}) : super(key: key);

  @override
  State<SettingPosition> createState() => _SettingPositionState();
}

class _SettingPositionState extends State<SettingPosition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("saro"),
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: Text("Position"),
    );
  }
}
