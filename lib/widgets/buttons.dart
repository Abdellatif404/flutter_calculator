import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:provider/provider.dart';
import 'package:claculator/functions.dart';
import 'package:claculator/constants.dart';

class LargeButton extends StatelessWidget {
  final String mark;
  final Color color;
  final Color highLightColor;
  LargeButton({this.mark,this.color,this.highLightColor});

  @override
  Widget build(BuildContext context) {
    ScreenScaler _scaler = ScreenScaler()..init(context);
    return Expanded(
      flex: 2,
      child: FlatButton(
        onPressed: () => context.read<Functions>().buttonPressed(mark),
        shape: RoundedRectangleBorder(),
        color: color,
        splashColor: highLightColor,
        highlightColor: highLightColor,
        child: Center(
            child: Text(
              mark,
              style: TextStyle(
                fontFamily: 'Mukta',
                fontWeight: FontWeight.w600,
                fontSize: _scaler.getTextSize(16),
                color: white,
              ),
            )),
      ),
    );
  }
}

class ButtonsRow extends StatelessWidget {
  final List marks;
  ButtonsRow(this.marks);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: <Widget>[
          DefaultButton(mark: marks[0],),
          DefaultButton(mark: marks[1],),
          DefaultButton(mark: marks[2],),
          DefaultButton(mark: marks[3],),
        ],
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String mark;
  DefaultButton({@required this.mark});

  @override
  Widget build(BuildContext context) {
    ScreenScaler _scaler = ScreenScaler()..init(context);

    return Flexible(
      child: OutlineButton(
        onPressed: () => context.read<Functions>().buttonPressed(mark),
        shape: RoundedRectangleBorder(),
        borderSide: BorderSide(width: 0.03),
        highlightColor: highLightWhite,
        splashColor: highLightWhite,
        child: Center(
            child: Text(
              mark,
              style: TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w500,
                fontSize: _scaler.getTextSize(16),
                color: grey,
              ),
            )),
      ),
    );
  }
}
