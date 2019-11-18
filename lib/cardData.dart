import 'package:flutter/material.dart';
import 'package:firstmy_app/pages/logo.dart';

class Cards extends StatelessWidget {
  final List<String> anyImage;

  Widget _itemRow(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/calisma2.jpg'),
          Text(anyImage[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Tümünü gör."),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LogoDetail(),
                    ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Cards([this.anyImage = const []]);
  Widget _builderListControl() {
    Widget cardCard;
    if (anyImage.length > 0) {
      cardCard =
          ListView.builder(itemBuilder: _itemRow, itemCount: anyImage.length);
    } else {
      cardCard = Center(child: Text("Hiçbir eleman eklenmedi."));
    }

    return cardCard;
  }

  @override
  Widget build(BuildContext context) {
    return _builderListControl();
  }
}
