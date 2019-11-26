import 'package:firstmy_app/pages/auth.dart';
import 'package:firstmy_app/pages/car_admin.dart';
import 'package:firstmy_app/pages/car.dart';
import 'package:firstmy_app/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  final List<Map<String, String>> _carpictures = [];
  void _addCar(Map<String, String> car) {
    setState(() {
      _carpictures.add(car);
    });
  }

  void _deleteCar(int index) {
    setState(() {
      _carpictures.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.orange, brightness: Brightness.light),
      home: AuthPage(),
      routes: {
        '/goCarAdminPage': (BuildContext context) => CarAdminPage(),
        '/goHomePage': (BuildContext context) =>
            HomePage(_carpictures, _addCar, _deleteCar)
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'car') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => CarPage(
                _carpictures[index]['title'], _carpictures[index]['image']),
          );
        }
        return null;
      },
    );
  }
}
