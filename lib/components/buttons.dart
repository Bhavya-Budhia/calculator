import 'file:///C:/Users/Bhavya/AndroidStudioProjects/Flutter-Apps/first_app/lib/models/touch_values.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Button extends StatelessWidget {
  final int symbol;
  final int flex;
  Button({this.symbol, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          '${symbol.toInt()}',
          style: TextStyle(fontSize: 40.0),
        ),
        onPressed: () {
          Provider.of<TouchValues>(context, listen: false).printValue(symbol);
        },
      ),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  final IconData iconSymbol;

  ButtonIcon({this.iconSymbol});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: null,
        child: FaIcon(
          iconSymbol,
          size: 30.0,
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}
