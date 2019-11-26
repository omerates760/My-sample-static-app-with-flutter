import 'package:flutter/material.dart';
import './pages/car.dart';

class Cars extends StatelessWidget {
  final List<Map<String, dynamic>> carpictures;
  Cars(this.carpictures);
  Widget _buildCarItems(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(carpictures[index]['image']),
          Text(carpictures[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Detaylar'),
                  onPressed: () => Navigator.pushNamed<bool>(
                      context, '/car/' + index.toString()))
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
