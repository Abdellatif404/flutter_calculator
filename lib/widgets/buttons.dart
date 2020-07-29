import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:claculator/constants.dart';

class CalcButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenScaler _scaler = ScreenScaler()..init(context);
    return Expanded(
      flex: 2,
      child: FlatButton(
        onPressed: () {},
        color: orangeColor,
        child: Center(
            child: Text(
              '=',
              style: TextStyle(
                fontSize: _scaler.getTextSize(15),
                color: greyColor,
              ),
            )),
      ),
    );
  }
}

class RowButton extends StatelessWidget {
  final List marks;
  RowButton(this.marks);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: <Widget>[
          MyButton(mark: marks[0],),
          MyButton(mark: marks[1],),
          MyButton(mark: marks[2],),
          MyButton(mark: marks[3],),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String mark;
  MyButton({@required this.mark});

  @override
  Widget build(BuildContext context) {
    ScreenScaler _scaler = ScreenScaler()..init(context);
    return Flexible(
      child: OutlineButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(),
        borderSide: BorderSide(width: 0.03),
        highlightColor: const Color(0xFFF6F4EB),
        child: Center(
            child: Text(
              mark,
              style: TextStyle(
                fontSize: _scaler.getTextSize(15),
                color: greyColor,
              ),
            )),
      ),
    );
  }
}
