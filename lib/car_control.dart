import 'package:flutter/material.dart';
class CarControl extends StatelessWidget {
final Function addCars;
  CarControl(this.addCars);
  @override
    Widget build(BuildContext context) {
      return RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              addCars({'title':'Yeni Test Araci', 'image':'assets/autogallery.jpg'});
            },
            child: Text('Resim Ekle'),
          );
    }
}