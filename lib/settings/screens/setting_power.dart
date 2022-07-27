import 'package:flutter/material.dart';

class SettingPower extends StatefulWidget {
  const SettingPower({Key? key}) : super(key: key);

  @override
  State<SettingPower> createState() => _SettingPowerState();
}

class _SettingPowerState extends State<SettingPower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("saro"),
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: Text("Power"),
    );
  }
}
