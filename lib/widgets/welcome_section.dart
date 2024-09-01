import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 150,),
      width: MediaQuery.of(context).size.width,
      height: 630,
      child: Row(
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

              SizedBox(height: 20,)
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
