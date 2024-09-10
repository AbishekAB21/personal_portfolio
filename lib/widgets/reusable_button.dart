import 'package:flutter/material.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class ReusableButton extends StatelessWidget {
  final String buttontext;
  final void Function()? onTap;
  final Color? color;

  const ReusableButton({
    super.key,
    required this.buttontext,
    required this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    // Adjusting button width based on screen size
    double buttonWidth;
    if (Responsive.isWideDesktop(context)) {
      buttonWidth = MediaQuery.of(context).size.width * 0.3; // 30% of screen width for wide desktops
    } else if (Responsive.isDesktop(context)) {
      buttonWidth = MediaQuery.of(context).size.width * 0.4; // 40% of screen width for desktops
    } else if (Responsive.isTablet(context)) {
      buttonWidth = MediaQuery.of(context).size.width * 0.5; // 50% for tablets
    } else {
      buttonWidth = MediaQuery.of(context).size.width * 0.8; // 80% for mobile
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonWidth, // Set the calculated button width
        padding: const EdgeInsets.symmetric(vertical: 20), // Adjust padding for better UI
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? Theme.of(context).colorScheme.secondary,
        ),
        child: Center(
          child: Text(
            buttontext,
            style: Fonstyles.HeadingTextStyle3(context),
            textAlign: TextAlign.center, // Ensures the text is centered
          ),
        ),
      ),
    );
  }
}
