import 'package:flutter/material.dart';

class Fonstyles {
  static TextStyle RegularTextStyle(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
        fontWeight: FontWeight.w400,
        fontFamily: "Merriweather Sans");
  }

  static TextStyle HeadingTextStyle(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
        fontSize: 50,
        fontWeight: FontWeight.bold,
        fontFamily: "Merriweather Sans");
  }
}
