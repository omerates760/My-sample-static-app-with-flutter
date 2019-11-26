import 'package:flutter/material.dart';

class CarCreatePage extends StatefulWidget {
  final Function addCar;
  CarCreatePage(this.addCar);
  @override
  State<StatefulWidget> createState() {
    return _CarCreatePageState();
  }
}

class _CarCreatePageState extends State<CarCreatePage> {
  String _titleValue;
  String _description;
  double _priceValue;
  bool _accept;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Car Title'),
              onChanged: (String value) {
                setState(() {
                  _titleValue = value;
                });
              },
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(labelText: 'Car Description'),
              onChanged: (String value) {
                setState(() {
                  _description = value;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Car Price'),
              onChanged: (String value) {
                setState(() {
                  _priceValue = double.parse(value);
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            SwitchListTile(
              value: _accept,
              onChanged: (bool value) {
                setState(() {
                  _accept=value;
                });
              },title: Text("Kabul ediyor musunuz ?"),
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              textColor: Colors.black,
              child: Text("Sakla - Save"),
              onPressed: () {
                final Map<String, dynamic> car = {
                  'title': _titleValue,
                  'description': _description,
                  'price': _priceValue,
                  'image': 'assets/autogallery.jpg'
                };
                widget.addCar(car);
                Navigator.pushReplacementNamed(context, '/goHomePage');
              },
            )
          ],
        ));
  }
}
