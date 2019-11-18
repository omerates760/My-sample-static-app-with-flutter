import 'package:flutter/material.dart';
import 'package:firstmy_app/cardmanager.dart';

class HomePage extends StatelessWidget{
@override
  Widget build(BuildContext context) {

    return Scaffold(
            appBar: AppBar(
              title: Text("Deneme Listesi"),
            ),
            body: CardManager());
  }

}