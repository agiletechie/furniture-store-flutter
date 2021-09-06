import 'package:flutter/material.dart';
import '../constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: kPrimaryTextColor,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30.0),
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
            ),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: kThirdColor,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
