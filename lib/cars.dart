import 'package:firstmy_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import './pages/car.dart';

void main() {
  debugPaintBaselinesEnabled = true;
  runApp(MyFirstApp());
}

class Cars extends StatelessWidget {
  final List<Map<String, dynamic>> carpictures;
  Cars(this.carpictures);
  Widget _buildCarItems(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(carpictures[index]['image']),
          Container(
            padding: EdgeInsets.only(top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  carpictures[index]['title'],
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    '\$${carpictures[index]['price'].toString()}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.circular(3.0)),
            child: Text('İstanbul türkiye'),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.info),
                  color: Theme.of(context).primaryColor,
                  onPressed: () => Navigator.pushNamed<bool>(
                      context, '/car/' + index.toString())),
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCarList() {
    Widget carCard;
    if (carpictures.length > 0) {
      carCard = ListView.builder(
        itemBuilder: _buildCarItems,
        itemCount: carpictures.length,
      );
    } else {
      carCard = Container();
    }
    // else {
    //    carCard = Center(child: Text('Hiç Kayıt yok Kayıt ekleyin'),);
    // }
    return carCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildCarList();
  }
}
