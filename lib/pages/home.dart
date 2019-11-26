import 'package:flutter/material.dart';
import '../carsmanager.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> carpictures;
  final Function addCar;
  final Function deleteCar;
  HomePage(this.carpictures, this.addCar, this.deleteCar);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text("Seçiniz"),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text("Araç yönetimi"),
              onTap: () {
                Navigator.pushNamed(context, '/goCarAdminPage');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Test Listesi'),
      ),
      body: CarsManager(carpictures, addCar, deleteCar),
    );
  }
}
