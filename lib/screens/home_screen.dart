import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/models/table.dart' as Tables;
import '../constant.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  bottomRight: Radius.circular(35.0),
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
      ),
      body: SafeArea(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TabMenu(
                    menuItem: 'Tables',
                  ),
                  TabMenu(
                    menuItem: 'Chairs',
                  ),
                  TabMenu(
                    menuItem: 'Lamps',
                  ),
                  TabMenu(
                    menuItem: 'All',
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: Tables.Table(
                              image: Image.asset('images/furniture_black.jpg'))
                          .image,
                    );
                  },
                  itemCount: 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TabMenu extends StatelessWidget {
  final String menuItem;

  TabMenu({this.menuItem});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        menuItem,
        style: TextStyle(
          color: kSecondaryTextColor,
          fontSize: 18.0,
        ),
      ),
      onPressed: () {},
      style: ButtonStyle(
        // overlayColor: MaterialStateProperty.all<Color>(kThirdColor),
        // shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
        //   (Set<MaterialState> states) {
        //     if (states.contains(MaterialState.pressed)) {
        //       return RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(20.0),
        //       );
        //     }
        //     return null;
        //   },
        // ),
        backgroundColor: MaterialStateProperty.all(Colors.amber),
      ),
    );
  }
}
