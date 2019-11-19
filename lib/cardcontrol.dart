import 'package:flutter/material.dart';

class CardControl extends StatelessWidget {
  final Function addCar;
  CardControl(this.addCar);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {

        addCar({'title':'yeni test araç,','image':'assets/calisma2.jpg'});
      },
      child: Text("Resim Ekle"),
    );
  }
}
