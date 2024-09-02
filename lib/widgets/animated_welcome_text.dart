import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class AnimatedWelcomeSection extends StatelessWidget {
  const AnimatedWelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TypewriterAnimatedText("Welcome to my portfolio !",
          textStyle: Fonstyles.MediumTextStyle2(context),
          speed: Duration(milliseconds: 70)
          
          )
    ],
    isRepeatingAnimation: false,
    repeatForever: false,
    );
  }
}
