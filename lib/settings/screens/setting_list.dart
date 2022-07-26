import 'package:flutter/material.dart';
import 'package:primesh/config/config.dart';
import 'package:primesh/settings/widgets/setting_list_element.dart';

class SettingList extends StatelessWidget {
  const SettingList({Key? key}) : super(key: key);

  void _callback() {
    print("object");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: contrast,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(containersCorner),
              topRight: Radius.circular(containersCorner))),
      child: Column(
        children: [
          SettingListElement(
            callback: _callback,
            icon: const Icon(
              Icons.wifi,
              size: 35,
            ),
            name: "Wi-Fi",
            description: "WiFI credential and more",
          ),
          SettingListElement(
            callback: _callback,
            icon: const Icon(
              Icons.location_on_outlined,
              size: 35,
            ),
            name: "Position",
            description: "Position settings and flags",
          ),
          SettingListElement(
            callback: _callback,
            icon: const Icon(
              Icons.person,
              size: 35,
            ),
            name: "User",
            description: "Device name and details",
          ),
          SettingListElement(
            callback: _callback,
            icon: const Icon(
              Icons.battery_charging_full,
              size: 35,
            ),
            name: "Power",
            description: "Power and sleep settings",
          ),
          SettingListElement(
            callback: _callback,
            icon: const Icon(
              Icons.router_outlined,
              size: 35,
            ),
            name: "Radio",
            description: "LoRa settings",
          ),
          SettingListElement(
            callback: _callback,
            icon: const Icon(
              Icons.private_connectivity_outlined,
              size: 35,
            ),
            name: "Channels",
            description: "Manage channels",
          ),
          SettingListElement(
            callback: _callback,
            icon: const Icon(
              Icons.private_connectivity_outlined,
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
