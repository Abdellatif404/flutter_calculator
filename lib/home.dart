import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:provider/provider.dart';
import 'package:claculator/widgets/buttons.dart';
import 'package:claculator/functions.dart';
import 'package:claculator/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map<String, List> marks = {
    'Row1': ['C','%','/','<<'],
    'Row2': ['7','8','9','x'],
    'Row3': ['4','5','6','−'],
    'Row4': ['1','2','3','+'],
  };

  @override
  Widget build(BuildContext context) {
    ScreenScaler _scaler = ScreenScaler()..init(context);
    Functions data = context.watch<Functions>();

    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  AutoSizeText(
                    '${data.calc}',
                    style: TextStyle(
                        fontSize: _scaler.getTextSize(15),
                        color: grey,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 10,width: double.maxFinite,),
                  AutoSizeText(
                    '${data.result}',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: _scaler.getTextSize(23),
                      color: orange,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                ButtonsRow(marks['Row1']),
                ButtonsRow(marks['Row2']),
                ButtonsRow(marks['Row3']),
                ButtonsRow(marks['Row4']),
                Flexible(
                  child: Row(
                    children: <Widget>[
                        LargeButton(mark: '0',color: grey,highLightColor: highLightGrey,),
                      LargeButton(mark: '=',color: orange,highLightColor: highLightOrange,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





