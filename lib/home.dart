import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:claculator/widgets/buttons.dart';
import 'package:claculator/constants.dart';
import 'package:claculator/functions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    Map<String, List> marks = {
      'Row1': ['C','%','/','X'],
      'Row2': ['7','8','9','*'],
      'Row3': ['4','5','6','-'],
      'Row4': ['1','2','3','+'],
      'Row5': ['0','.'],
    };
    ScreenScaler _scaler = ScreenScaler()..init(context);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: whiteColor,
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
                    '123+45678*901234',
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: _scaler.getTextSize(15),
                        color: greyColor,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 10,width: double.maxFinite,),
                  AutoSizeText(
                    '2546',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: _scaler.getTextSize(22),
                      color: orangeColor,
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
                RowButton(marks['Row1']),
                RowButton(marks['Row2']),
                RowButton(marks['Row3']),
                RowButton(marks['Row4']),
                Flexible(
                  child: Row(
                    children: <Widget>[
                      MyButton(mark: marks['Row5'][0],),
                      MyButton(mark: marks['Row5'][1],),
                      CalcButton(),
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




// rounded outline
// result text is big in small device


