import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/config/responsive.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? EdgeInsets.symmetric(horizontal: 20, vertical: 20)
          : EdgeInsets.symmetric(horizontal: 150),
      width: MediaQuery.of(context).size.width,
      height: Responsive.isMobile(context) ? 400 : 630,
      child: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: 10,),
                
                Text(
                  "Abishek AB",
                  style: Fonstyles.AbsolutelyMassiveTextStyle(context),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Flutter Developer",
                  style: Fonstyles.HeadingTextStyle2(context),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Flexible(
                  child: LottieBuilder.asset(
                    "assets/Animation - 1724696149122.json",
                    height: Responsive.isMobile(context) ? 300 : 500,
                    width: Responsive.isMobile(context) ? 300 : 500,
                    repeat: true,
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Abishek AB",
                      style: Fonstyles.AbsolutelyMassiveTextStyle(context),
                    ),
                    Text(
                      "Flutter Developer",
                      style: Fonstyles.HeadingTextStyle2(context),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                LottieBuilder.asset(
                  "assets/Animation - 1724696149122.json",
                  height: 500,
                  width: 500,
                  repeat: true,
                ),
              ],
            ),
    );
  }
}
