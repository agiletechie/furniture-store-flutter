import 'package:flutter/material.dart';

class Tables {
  String type = 'Tables';
  Image image;
  String title, desc;
  double price;

  Tables({this.image, this.title, this.desc, this.price});

  static List itemList() {
    final List table = [
      Tables(
        image: Image.asset('images/coffee_table.jpg'),
        title: 'Coffee Table',
        desc:
            'While furnishing your house, choosing good seating is very important. An armchair is both functional and comfortable. Its extended side supports to give complete rest to your arms.',
        price: 20.55,
      ),
      Tables(
        image: Image.asset('images/study_table.jpg'),
        title: 'Study Table',
        desc:
            'While furnishing your house, choosing good seating is very important. An armchair is both functional and comfortable. Its extended side supports to give complete rest to your arms.',
        price: 29.50,
      ),
      Tables(
        image: Image.asset('images/office_table.jpg'),
        title: 'Office Table',
        desc:
            'While furnishing your house, choosing good seating is very important. An armchair is both functional and comfortable. Its extended side supports to give complete rest to your arms.',
        price: 30.55,
      ),
    ];

    return table;
  }
}
