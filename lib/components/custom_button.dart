import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  CustomButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(side: BorderSide.none),
      fillColor: kCardInactiveColor,
      onPressed: onPress,
      constraints: BoxConstraints(
        minWidth: 50,
        minHeight: 50,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
