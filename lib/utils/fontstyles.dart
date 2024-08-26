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

  static TextStyle MediumTextStyle2(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
        fontSize: 35,
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

  static TextStyle AbsolutelyMassiveTextStyle(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
        fontSize: 80,
        fontWeight: FontWeight.bold,
        fontFamily: "Merriweather Sans");
  }

  static TextStyle HeadingTextStyle2(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "Merriweather Sans");
  }

  static TextStyle HeadingTextStyle3(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: "Merriweather Sans");
  }
}
