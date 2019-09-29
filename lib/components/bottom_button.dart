import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottonButton extends StatelessWidget {
  final String text;

  BottonButton({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSliderThumbAndCalculateColor,
      margin: EdgeInsets.only(top: 10),
      child: Center(
        child: Text(
          text,
          style: kCalculateButtonTextStyle,
        ),
      ),
      width: double.infinity,
    );
  }
}
