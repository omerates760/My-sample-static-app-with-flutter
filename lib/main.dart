import 'package:firstmy_app/pages/auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.orange, brightness: Brightness.light),
        home: AuthPage());
  }
}
