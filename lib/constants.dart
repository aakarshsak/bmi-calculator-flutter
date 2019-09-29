import 'package:flutter/material.dart';

const kAppbarScaffoldPrimaryColor = Color(0xFF11173A);
const kCardInactiveColor = Color(0xFF272A4E);
const kCardActiveColor = Color(0xFF141A4A);
const kLightTextColor = Color(0x77B9B9C6);
const kSliderThumbAndCalculateColor = Color(0xFFF84B65);
const kMarginValue = 10;
const kGenderIconSize = 80;

const kTextStyleFade = TextStyle(
  color: kLightTextColor,
  fontWeight: FontWeight.bold,
);

const kTextStyleValues = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w900,
  fontSize: 60,
);

const kCalculateButtonTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w500,
  fontSize: 30,
);

const kResultPageTitle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w400,
  fontSize: 40,
);

const kBMIResult = TextStyle(
  color: Colors.green,
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

const kBMINumericResult = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 120,
  color: Colors.white,
);

const kBMIRange = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 15,
  color: Colors.white,
);

const kBMIText = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

final kAppBar = AppBar(
  title: Text("BMI CALCULATOR"),
);
