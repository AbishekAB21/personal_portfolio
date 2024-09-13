import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isTablet(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "My Skills",
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
                  "As a self taught Flutter developer I have worked with a lot of technologies related to flutter. Starting from methods to build attractive UI to effective state management to backend integration and API integration. You can get a better idea below.",
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.justify,
                  style: Fonstyles.RegularTextStyle(context),
                ),
              ),
              SizedBox(height: 20),
              LottieBuilder.asset(
                "assets/Animation - 1725788264026.json",
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
                      "My Skills",
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
                      "As a self-taught Flutter developer, I have gained extensive experience with a wide array of technologies related to Flutter. My expertise spans from crafting visually compelling user interfaces to implementing effective state management solutions. I am adept at backend integration and API connectivity, ensuring seamless functionality across all aspects of application development. For a comprehensive overview of my work and skills, please refer to the detailed examples provided below.",
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                      style: Fonstyles.RegularTextStyle(context),
                    ),
                  )
                ],
              ),
              LottieBuilder.asset(
                "assets/Animation - 1725788264026.json",
                height: Responsive.isWideDesktop(context) ? 500 : 400,
                width: Responsive.isWideDesktop(context) ? 500 : 400,
              ),
            ],
          );
  }
}
