import 'package:firstmy_app/pages/car_create.dart';
import 'package:firstmy_app/pages/car_list.dart';
import 'package:firstmy_app/pages/home.dart';
import 'package:flutter/material.dart';

class CarAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text('Araç yönetimi'),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                title: Text('Ana sayfaya dön'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/goHomePage');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Test Listesi'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Araç oluştur',
                icon: Icon(Icons.create),
              ),
              Tab(
                text: 'Araç Listele',
                icon: Icon(Icons.list),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[CarCreatePage(), CarListPage()],
        ),
      ),
    );
  }
}
