import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isTablet(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "About me!",
                  style: Fonstyles.HeadingTextStyle(context),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "I'm Abishek, a self taught flutter developer. I'm familiar with a lot of technologies related to flutter. For the past few months I've been part of a self learning bootcamp where I developed a lot of projects using Flutter. You can find all of them in the projects section.\n\nComing to my educational background, I'm a BCA graduate, I graduated in 2022 from Nehru Arts and Science college, Coimbatore.\n\nI also have 1 year of experience from Cognizant as a Programer trainee. There, I was a PEGA SYSTEM ARCHITECT tasked with developing robust business applications using PEGA low code app development platform.",
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.justify,
                  style: Fonstyles.RegularTextStyle(context),
                ),
              ),
              SizedBox(height: 20),
              LottieBuilder.asset(
                "assets/Animation - 1724060555500.json",
                height: 300,
                width: 300,
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "About me!",
                      style: Fonstyles.HeadingTextStyle(context),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: Responsive.isTablet(context) ? 400 : 500,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "I'm Abishek, a self taught flutter developer. I'm familiar with a lot of technologies related to flutter. For the past few months I've been part of a self learning bootcamp where I developed a lot of projects using Flutter. You can find all of them in the projects section.\n\nComing to my educational background, I'm a BCA graduate, I graduated in 2022 from Nehru Arts and Science college, Coimbatore.\n\nI also have 1 year of experience from Cognizant as a Programer trainee. There, I was a PEGA SYSTEM ARCHITECT tasked with developing robust business applications using PEGA low code app development platform.",
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                      style: Fonstyles.RegularTextStyle(context),
                    ),
                  )
                ],
              ),
              LottieBuilder.asset(
                "assets/Animation - 1724060555500.json",
                height: Responsive.isWideDesktop(context) ? 500 : 400,
                width: Responsive.isWideDesktop(context) ? 500 : 400,
              ),
            ],
          );
  }
}
