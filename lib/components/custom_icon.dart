import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  final IconData icon;

  CustomIcons({@required this.icon});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.white,
      size: 80,
    );
  }
}
