import 'package:flutter/material.dart';

import './cars.dart';
import './car_control.dart';
class CarsManager extends StatefulWidget {
  final Map<String,String> startCars;
  CarsManager({this.startCars}) {
print('Cars manager Constructer');
  }
  @override
  State<StatefulWidget> createState() {
    print('Cars manager cerateState');
    return _CarsManagerState();
  }
}

class _CarsManagerState extends State<CarsManager> {
  final List<Map<String,String>> _carpictures = [];
  @override
    void initState() {
      if (widget.startCars != null) {
          _carpictures.add(widget.startCars);
      }

print('Cars manager State initState');
      super.initState();

    }
    void _addCars(Map<String,String> car) {
      setState(() {
                _carpictures.add(car);
                
              });
    }
    void _deleteCar(int index){
      setState(() {
        _carpictures.removeAt(index);
      });
    }
    @override
      void didUpdateWidget(CarsManager oldWidget) {
        print('Cars manager State didUpdateWidget');
        super.didUpdateWidget(oldWidget);
      }
  @override
  Widget build(BuildContext context) {
    print('Cars manager State');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          child: CarControl(_addCars),
        ),
        Expanded(child:Cars(_carpictures,deleteCar:_deleteCar))
      ],
    );
  }
}
