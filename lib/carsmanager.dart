import 'package:flutter/material.dart';
import './cars.dart';
import './car_control.dart';

class CarsManager extends StatelessWidget {
  final List<Map<String, String>> carpictures;
  final Function addCar;
  final Function deleteCar;

  CarsManager(this.carpictures, this.addCar, this.deleteCar);
  @override
  Widget build(BuildContext context) {
    print('Cars manager State');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          child: CarControl(addCar),
        ),
        Expanded(child: Cars(carpictures, deleteCar: deleteCar))
      ],
    );
  }
}
