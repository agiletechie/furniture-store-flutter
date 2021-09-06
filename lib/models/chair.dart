import 'package:flutter/material.dart';

class Chair {
  String type = 'Chairs';
  Image image;
  String title, desc;
  double price;

  Chair({this.image, this.title, this.desc, this.price});

  static List itemList() {
    final List chair = [
      Chair(
        image: Image.asset('images/furniture_black.jpg'),
        title: 'Black Chair',
        desc:
            'While furnishing your house, choosing good seating is very important. An armchair is both functional and comfortable. Its extended side supports to give complete rest to your arms.',
        price: 25.55,
      ),
      Chair(
        image: Image.asset('images/furniture_blue.jpg'),
        title: 'Blue Chair',
        desc:
            'While furnishing your house, choosing good seating is very important. An armchair is both functional and comfortable. Its extended side supports to give complete rest to your arms.',
        price: 35.00,
      ),
      Chair(
        image: Image.asset('images/furniture_green.jpg'),
        title: 'Green Chair',
        desc:
            'While furnishing your house, choosing good seating is very important. An armchair is both functional and comfortable. Its extended side supports to give complete rest to your arms.',
        price: 28.50,
      ),
    ];

    return chair;
  }
}
