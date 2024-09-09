import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class ReusableSnackBar {
  showSnackbar(
    BuildContext context,
    String text,
    Color color,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 3),
        backgroundColor: color,
        content: Text(
          text,
          style: Fonstyles.RegularTextStyle(context),
        )));
  }
}
