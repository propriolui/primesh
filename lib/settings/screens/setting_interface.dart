import 'package:flutter/material.dart';

class SettingInterface extends StatefulWidget {
  const SettingInterface({Key? key}) : super(key: key);

  @override
  State<SettingInterface> createState() => _SettingInterfaceState();
}

class _SettingInterfaceState extends State<SettingInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("saro"),
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: const Text("Interface"),
    );
  }
}
