import 'package:flutter/material.dart';
import 'package:primesh/config/config.dart';
import 'package:primesh/settings/screens/setting_channels.dart';
import 'package:primesh/settings/screens/setting_interface.dart';
import 'package:primesh/settings/screens/setting_position.dart';
import 'package:primesh/settings/screens/setting_power.dart';
import 'package:primesh/settings/screens/setting_radio.dart';
import 'package:primesh/settings/screens/setting_user.dart';
import 'package:primesh/settings/screens/setting_wifi.dart';
import 'package:primesh/utils/widgets/checkbox_element.dart';
import 'package:primesh/utils/widgets/list_element.dart';
import 'package:primesh/utils/widgets/pages_bottom_menu_container.dart';

class SettingList extends StatelessWidget {
  const SettingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _redirect(String destination) {
      switch (destination) {
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
      }
    }

    return PagesBottomMenuContainer(
      child: ListView(
        children: [
          ListElement(
            callback: _redirect,
            icon: const Icon(
              Icons.wifi,
              size: 35,
            ),
            name: "Wi-Fi",
            description: "WiFI credential and more",
          ),
          ListElement(
            callback: _redirect,
            icon: const Icon(
              Icons.location_on_outlined,
              size: 35,
            ),
            name: "Position",
            description: "Position settings and flags",
          ),
          ListElement(
            callback: _redirect,
            icon: const Icon(
              Icons.person,
              size: 35,
            ),
            name: "User",
            description: "Device name and details",
          ),
          ListElement(
            callback: _redirect,
            icon: const Icon(
              Icons.battery_charging_full,
              size: 35,
            ),
            name: "Power",
            description: "Power and sleep settings",
          ),
          ListElement(
            callback: _redirect,
            icon: const Icon(
              Icons.settings_input_antenna_outlined,
              size: 35,
            ),
            name: "Radio",
            description: "LoRa settings",
          ),
          ListElement(
            callback: _redirect,
            icon: const Icon(
              Icons.private_connectivity_outlined,
              size: 35,
            ),
            name: "Channels",
            description: "Manage channels",
          ),
          ListElement(
            callback: _redirect,
            icon: const Icon(
              Icons.design_services,
              size: 35,
            ),
            name: "Interface",
            description: "Language and UI settings",
          ),
        ],
      ),
    );
  }
}
