import 'package:bmi_calculator/activities/result_page.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/custom_button.dart';
import 'package:bmi_calculator/components/custom_cards.dart';
import 'package:bmi_calculator/components/custom_icon.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/models/bmi_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kCardInactiveColor;
  Color femaleCardColor = kCardInactiveColor;

  void femaleCardBackgroundChange() {
    setState(() {
      femaleCardColor = femaleCardColor == kCardInactiveColor
          ? kCardActiveColor
          : kCardInactiveColor;
    });
  }

  void maleCardBackgroundChange() {}

  static int height = 120;
  static int weight = 54;
  static int age = 21;

  Brain brain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    customColor: maleCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CustomIcons(
                          icon: FontAwesomeIcons.mars,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "MALE",
                          style: kTextStyleFade,
                        )
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        maleCardColor = maleCardColor == kCardInactiveColor
                            ? kCardActiveColor
                            : kCardInactiveColor;
                        femaleCardColor = kCardInactiveColor;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    customColor: femaleCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CustomIcons(
                          icon: FontAwesomeIcons.venus,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "FEMALE",
                          style: kTextStyleFade,
                        )
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        femaleCardColor = femaleCardColor == kCardInactiveColor
                            ? kCardActiveColor
                            : kCardInactiveColor;
                        maleCardColor = kCardInactiveColor;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: CustomCard(
              customColor: kCardActiveColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: kTextStyleFade,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kTextStyleValues,
                      ),
                      Text(
                        "cm",
                        style: kTextStyleFade,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        thumbColor: kSliderThumbAndCalculateColor,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 28),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: kLightTextColor),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 200,
                      onChanged: (double changeValue) {
                        setState(() {
                          height = changeValue.floor();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    customColor: kCardActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: kTextStyleFade,
                        ),
                        Text(
                          weight.toString(),
                          style: kTextStyleValues,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            CustomButton(
                              icon: Icons.remove,
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            CustomButton(
                              icon: Icons.add,
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    customColor: kCardActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kTextStyleFade,
                        ),
                        Text(
                          age.toString(),
                          style: kTextStyleValues,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            CustomButton(
                              icon: Icons.remove,
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            CustomButton(
                              icon: Icons.add,
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  brain = Brain(height, weight, age);
                  brain.calculate();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        brain: brain,
                      ),
                    ),
                  );
                });
              },
              child: BottonButton(
                text: "CALCULATE",
              ),
            ),
          )
        ],
      ),
    );
  }
}
