import 'package:flutter/material.dart';

class SettingWiFi extends StatefulWidget {
  const SettingWiFi({Key? key}) : super(key: key);

  @override
  State<SettingWiFi> createState() => _SettingWifiState();
}

class _SettingWifiState extends State<SettingWiFi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Wi-Fi settings"),
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: Text("prova"),
    );
  }
}
