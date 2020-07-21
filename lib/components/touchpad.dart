import 'package:firstapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'buttons.dart';

class TouchPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Text(
                    'C',
                    style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w900),
                  ),
                  onPressed: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Text(
                    '+/-',
                    style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w900),
                  ),
                  onPressed: null,
                ),
              ),
              ButtonIcon(
                iconSymbol: FontAwesomeIcons.percent,
              ),
              ButtonIcon(
                iconSymbol: FontAwesomeIcons.backspace,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Button(
                symbol: 7,
              ),
              Button(
                symbol: 8,
              ),
              Button(
                symbol: 9,
              ),
              ButtonIcon(
                iconSymbol: FontAwesomeIcons.divide,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Button(
                symbol: 4,
              ),
              Button(
                symbol: 5,
              ),
              Button(
                symbol: 6,
              ),
              ButtonIcon(
                iconSymbol: FontAwesomeIcons.times,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Button(
                symbol: 1,
              ),
              Button(
                symbol: 2,
              ),
              Button(
                symbol: 3,
              ),
              ButtonIcon(
                iconSymbol: FontAwesomeIcons.minus,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Button(
                flex: 2,
                symbol: 0,
              ),
              ButtonIcon(
                iconSymbol: FontAwesomeIcons.equals,
              ),
              ButtonIcon(
                iconSymbol: FontAwesomeIcons.plus,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
