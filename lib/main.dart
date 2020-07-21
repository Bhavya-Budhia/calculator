import 'file:///C:/Users/Bhavya/AndroidStudioProjects/Flutter-Apps/first_app/lib/models/touch_values.dart';
import 'package:firstapp/screens/main-screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TouchValues(),
      child: MaterialApp(
        color: Colors.lightBlue,
        title: 'Calculator',
        home: MainScreen(),
      ),
    );
  }
}
