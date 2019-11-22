import 'package:flutter/material.dart';
import '../carsmanager.dart';

class HomePage extends StatelessWidget {
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
            ListTile(title: Text("Araç yönetimi"),
            onTap: (){},)
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Test Listesi'),
      ),
      body: CarsManager(),
    );
  }
}
