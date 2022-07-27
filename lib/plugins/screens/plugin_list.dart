import 'package:flutter/material.dart';
import 'package:primesh/config/config.dart';
import 'package:primesh/utils/widgets/list_element.dart';

class PluginList extends StatelessWidget {
  const PluginList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _redirect(String destination) {
      /*switch (destination) {
        case "Wi-Fi":
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SettingWiFi()));
          break;

        case "Position":
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SettingPosition()));
          break;

        case "User":
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SettingUser()));
          break;

        case "Power":
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SettingPower()));
          break;

        case "Radio":
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SettingRadio()));
          break;

        case "Channels":
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SettingChannels()));
          break;

        case "Interface":
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SettingInterface()));
          break;
      }*/
      print(destination);
    }

    return Container(
      decoration: BoxDecoration(
          color: contrast,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(containersCorner),
              topRight: Radius.circular(containersCorner))),
      child: ListView(
        children: [
          ListElement(
            callback: _redirect,
            icon: const Icon(
              Icons.cell_tower,
              size: 35,
            ),
            name: "Range Test",
            description: "Test the range of your meshtastic node",
          ),
          ListElement(
            callback: _redirect,
            icon: const Icon(
              Icons.input,
              size: 35,
            ),
            name: "Serial",
            description: "Send serial over the mesh",
          ),
          ListElement(
            callback: _redirect,
            icon: const Icon(
              Icons.storage,
              size: 35,
            ),
            name: "Store & Forward",
            description: "Retrive message history",
          ),
        ],
      ),
    );
  }
}
