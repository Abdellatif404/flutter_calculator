import 'package:flutter/material.dart';
import 'package:device_simulator/device_simulator.dart';
import 'package:claculator/home.dart';
import 'package:claculator/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primaryColor: orangeColor,
      ),
      debugShowCheckedModeBanner: false,
      home: DeviceSimulator(
        enable: false,
        child: Home(),
      ),
    );
  }
}
