import 'package:flutter/material.dart';

class SettingChannels extends StatefulWidget {
  const SettingChannels({Key? key}) : super(key: key);

  @override
  State<SettingChannels> createState() => _SettingChannelsState();
}

class _SettingChannelsState extends State<SettingChannels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("saro"),
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: const Text("Channel"),
    );
  }
}
