import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color customColor;
  final Widget cardChild;
  final Function onTap;
  final EdgeInsets margin;

  CustomCard(
      {@required this.customColor, this.cardChild, this.onTap, this.margin});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(kMarginValue.toDouble()),
        height: 500,
        //padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
