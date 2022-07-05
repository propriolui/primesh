import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'home/screens/home.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowMinSize(const Size(800, 600));
  }

  if (Platform.isWindows || Platform.isLinux) {
    // Initialize FFI
    sqfliteFfiInit();
  }

  databaseFactory = databaseFactoryFfi;

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primesh',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        androidOverscrollIndicator: AndroidOverscrollIndicator.glow,
        applyElevationOverlayColor: true,
        primaryColorDark: Colors.black54,
        dividerColor: Colors.white70,
      ),
      home: const Home(),
    );
  }
}
