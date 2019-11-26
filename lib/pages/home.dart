import 'package:flutter/material.dart';
import '../carsmanager.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> carpictures;

  HomePage(this.carpictures);
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
      body: CarsManager(carpictures),
    );
  }
}
