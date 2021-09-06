import 'package:flutter/material.dart';
import '../../constant.dart';
import 'menu_list.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Stylish Furnitures',
              style: TextStyle(
                color: kPrimaryTextColor,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'No. 1 Furniture Store',
              style: TextStyle(
                color: kSecondaryTextColor,
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            MenuList(),
          ],
        ),
      ),
    );
  }
}
