import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  final String title;
  final String imgUrl;
  CarPage(this.title, this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context,false);
          print("geri tuşuna basıldı");
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(imgUrl),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(title),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text('DELETE'),
                  onPressed: () => Navigator.pop(context, true),
                ),
              )
            ],
          ),
        ));
  }
}
