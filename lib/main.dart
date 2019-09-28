import 'package:flutter/material.dart';

import 'activities/input_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: kAppbarScaffoldPrimaryColor,
        scaffoldBackgroundColor: kAppbarScaffoldPrimaryColor,
      ),
    );
  }
}
