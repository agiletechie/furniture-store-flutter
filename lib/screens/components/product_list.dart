import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../models/table.dart';
import '../../models/chair.dart';
import '../../models/lamp.dart';

class ProductList extends StatelessWidget {
  final String type;
  final List allItems = Tables.itemList()
    ..addAll(
      Chair.itemList()
        ..addAll(
          Lamp.itemList(),
        ),
    );

  ProductList({this.type});

  List mapClass() {
    if (type == Chair().type) {
      return Chair.itemList();
    } else if (type == Tables().type) {
      return Tables.itemList();
    } else if (type == Lamp().type) {
      return Lamp.itemList();
    }
    return allItems;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          ...(mapClass().map((chair) {
            return Container(
              height: 150.0,
              child: Card(
                elevation: 0,
                color: kThirdColor,
                // margin: EdgeInsets.symmetric(vertical: 0),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      child: chair.image,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // Wrap Column in turn Text in expanded widget
                    // so that it fills available space and can
                    // have multiple lines.
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              chair.title,
                              style: TextStyle(
                                color: kPrimaryTextColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              chair.desc,
                              style: TextStyle(
                                color: kSecondaryTextColor,
                                fontSize: 15.0,
                              ),
                              maxLines: 3,
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '\$${chair.price}',
                              style: TextStyle(
                                color: kPrimaryTextColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
        ],
      ),
    );
  }
}
