import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 630,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LottieBuilder.asset(
            "assets/Animation - 1724696149122.json",
            height: 300,
            width: 300,
            repeat: true,
          ),
          SizedBox(height: 20,),
          Text(
            "Abishek AB",
            style: Fonstyles.HeadingTextStyle(context),
          ),
          Text(
            "Flutter Developer",
            style: Fonstyles.AbsolutelyMassiveTextStyle(context),
          ),
        ],
      ),
    );
  }
}
