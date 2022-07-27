import 'package:flutter/material.dart';

class SettingRadio extends StatefulWidget {
  const SettingRadio({Key? key}) : super(key: key);

  @override
  State<SettingRadio> createState() => _SettingRadioState();
}

class _SettingRadioState extends State<SettingRadio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("saro"),
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: const Text("prova"),
    );
  }
}
