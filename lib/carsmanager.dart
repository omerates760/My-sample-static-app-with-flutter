import 'package:flutter/material.dart';
import './cars.dart';

class CarsManager extends StatelessWidget {
  final List<Map<String, dynamic>> carpictures;

  CarsManager(this.carpictures);
  @override
  Widget build(BuildContext context) {
    print('Cars manager State');
    return Column(
      children: [Expanded(child: Cars(carpictures))],
    );
  }
}
