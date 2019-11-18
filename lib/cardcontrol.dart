import 'package:flutter/material.dart';

class CardControl extends StatelessWidget {
  final Function addCar;
  CardControl(this.addCar);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {

        addCar("deneme kart");
      },
      child: Text("Resim Ekle"),
    );
  }
}
