import 'package:flutter/material.dart';
import 'menu_button.dart';

class Menu extends StatelessWidget {
  final String type;
  final Function(String) changeType;

  Menu({this.type, this.changeType});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        MenuButton(
          menuItem: 'Tables',
          type: type,
          changeType: () {
            changeType('Tables');
          },
        ),
        MenuButton(
          menuItem: 'Chairs',
          type: type,
          changeType: () {
            changeType('Chairs');
          },
        ),
        MenuButton(
            menuItem: 'Lamps',
            type: type,
            changeType: () {
              changeType('Lamps');
            }),
        MenuButton(
            menuItem: 'All',
            type: type,
            changeType: () {
              changeType('All');
            }),
      ],
    );
  }
}
