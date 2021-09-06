import 'package:flutter/material.dart';
import '../../constant.dart';

class MenuButton extends StatelessWidget {
  final String menuItem;
  final String type;
  final Function changeType;

  MenuButton({this.menuItem, this.type, this.changeType});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        menuItem,
        style: TextStyle(
          color: type == menuItem ? kPrimaryTextColor : kSecondaryTextColor,
          fontSize: 18.0,
        ),
      ),
      onPressed: changeType,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(kSecondaryTextColor),
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
        backgroundColor: type == menuItem
            ? MaterialStateProperty.all(kSecondaryTextColor)
            : null,
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
