import 'package:flutter/material.dart';
import 'package:primesh/chat/screens/chat_list.dart';
import 'package:primesh/chat/screens/public_room_widget.dart';
import 'package:primesh/config/config.dart';
import 'package:primesh/plugins/screens/plugin_list.dart';
import 'package:primesh/settings/screens/setting_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    PublicRoom(),
    ChatList(),
    PluginList(),
    SettingList(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        foregroundColor: contrast,
        centerTitle: true,
        title: const Text('Primesh'),
        elevation: 0.0,
        toolbarHeight: 70,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        fixedColor: contrast,
        unselectedItemColor: Colors.white30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'Public Room',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            label: 'Private Rooms',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.extension),
            label: 'Plugins',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
