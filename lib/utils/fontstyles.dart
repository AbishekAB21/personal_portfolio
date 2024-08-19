import 'package:flutter/material.dart';

class Fonstyles {
  static TextStyle RegularTextStyle(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
        fontWeight: FontWeight.w400,
        fontFamily: "Merriweather Sans");
  }

  static TextStyle SmallTextStyle(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: "Merriweather Sans");
  }

  static TextStyle MediumTextStyle(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
        fontSize: 20,
        fontWeight: FontWeight.w500,
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
