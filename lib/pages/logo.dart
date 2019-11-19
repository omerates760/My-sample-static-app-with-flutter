import 'package:flutter/material.dart';

class LogoDetail extends StatelessWidget {
final String title;
final String imageUrl;

  LogoDetail(this.title,this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Text(title),
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
