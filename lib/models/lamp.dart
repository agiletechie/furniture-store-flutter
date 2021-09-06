import 'package:flutter/material.dart';

class Lamp {
  String type = 'Lamps';
  Image image;
  String title, desc;
  double price;

  Lamp({this.image, this.title, this.desc, this.price});

  static List itemList() {
    final List lamp = [
      Lamp(
        image: Image.asset('images/table_lamp.jpg'),
        title: 'Table Lamp',
        desc:
            'While furnishing your house, choosing good seating is very important. An armchair is both functional and comfortable. Its extended side supports to give complete rest to your arms.',
        price: 15.20,
      ),
      Lamp(
        image: Image.asset('images/hanging_lamp.jpg'),
        title: 'Hanging Lamp',
        desc:
            'While furnishing your house, choosing good seating is very important. An armchair is both functional and comfortable. Its extended side supports to give complete rest to your arms.',
        price: 25.55,
      ),
      Lamp(
        image: Image.asset('images/floor_lamp.jpg'),
        title: 'Floor Lamp',
        desc:
            'While furnishing your house, choosing good seating is very important. An armchair is both functional and comfortable. Its extended side supports to give complete rest to your arms. ',
        price: 20.00,
      ),
    ];
    return lamp;
  }
}
