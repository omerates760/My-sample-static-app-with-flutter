import 'package:flutter/material.dart';
import 'package:firstmy_app/cardData.dart';
import 'package:firstmy_app/cardcontrol.dart';

class CardManager extends StatefulWidget {
  final Map<String,String> cardItem;
  CardManager({this.cardItem}) {}
  @override
  State<StatefulWidget> createState() {
    return CardManagerState();
  }
}

class CardManagerState extends State<CardManager> {
  final List<Map<String,String>> _anyImage = [];
  @override
  void initState() {
    if (widget.cardItem != null) {
      _anyImage.add(widget.cardItem);
    }
    super.initState();
  }

  void _addCard(Map<String,String> car) {
    setState(() {
      _anyImage.add(car);
    });
  }

  @override
  Widget build(BuildContext context) {


    return Column(children: [
      Container(
        margin: EdgeInsets.all(20),
        child: CardControl(_addCard),
      ),
      Expanded(child: Cards(_anyImage))
    ]);
  }
}
