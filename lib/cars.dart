import 'package:flutter/material.dart';
import './pages/car.dart';

class Cars extends StatelessWidget {
  final List<Map<String, String>> carpictures;
  final Function deleteCar;
  Cars(this.carpictures,{this.deleteCar});
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
                onPressed: () => Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => CarPage(
                            carpictures[index]['title'],
                            carpictures[index]['image']),
                      ),
                    ).then((bool value) {
                      if(value){
                        deleteCar(index);
                      }
                    }),
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
