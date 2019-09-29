import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/custom_cards.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/models/bmi_brain.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final Brain brain;

  ResultPage({@required this.brain});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "YOUR RESULT",
                style: kResultPageTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              customColor: kCardInactiveColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    brain.resultBMI(),
                    style: kBMIResult,
                  ),
                  Text(
                    brain.calculateBMI(),
                    style: kBMINumericResult,
                  ),
                  Text(
                    "Normal BMI Range:",
                    style: kTextStyleFade,
                  ),
                  SizedBox(
                    height: 10,
                    width: double.infinity,
                  ),
                  Text(
                    "18.5 - 25 kg/m2",
                    style: kBMIRange,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      brain.adviceBMI(),
                      textAlign: TextAlign.center,
                      style: kBMIText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: BottonButton(
                text: "RE-CALCULATE",
              ),
            ),
          )
        ],
      ),
    );
  }
}
