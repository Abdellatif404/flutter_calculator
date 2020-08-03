import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:claculator/home.dart';
import 'package:claculator/functions.dart';
import 'package:claculator/constants.dart';


void main() => runApp(Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(primaryColor: orange),
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => Functions(),
        child: Home(),
      ),
    );
  }
}
