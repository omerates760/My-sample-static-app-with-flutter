import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detay Sayfası"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/calisma2.jpg"),
            Text("Logo detayları"),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text("Geriye dön"),
                onPressed: () => Navigator.pop(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
