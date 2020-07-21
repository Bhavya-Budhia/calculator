import 'file:///C:/Users/Bhavya/AndroidStudioProjects/Flutter-Apps/first_app/lib/models/touch_values.dart';
import 'package:firstapp/components/touchpad.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                alignment: Alignment.bottomRight,
                child: Text(
                  '${Provider.of<TouchValues>(context).touchValue}',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(),
                  ),
                ),
                child: TouchPad(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
