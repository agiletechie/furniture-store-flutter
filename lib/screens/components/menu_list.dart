import 'package:flutter/material.dart';
import 'product_list.dart';
import 'menu.dart';

class MenuList extends StatefulWidget {
  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  String type = 'Tables';

  void changeType(String newValue) {
    setState(() {
      type = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Menu(
            type: type,
            changeType: changeType,
          ),
          SizedBox(
            height: 20.0,
          ),
          ProductList(
            type: type,
          ),
        ],
      ),
    );
  }
}
