import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class ProjectsIntro extends StatelessWidget {
  const ProjectsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isTablet(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Projects Done",
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
                  "During my time at this self learning bootcamp called 'Brototype' I've developed several applications using Flutter. You can find these said projects below and for more details you can click on the specific project.",
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.justify,
                  style: Fonstyles.RegularTextStyle(context),
                ),
              ),
              SizedBox(height: 20),
              LottieBuilder.asset(
                "assets/Animation - 1724090813977.json",
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
                      "Projects Done",
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
                      "During my time at this self learning bootcamp called 'Brototype' I've developed several applications using Flutter. You can find these said projects below and for more details you can click on the specific project.",
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                      style: Fonstyles.RegularTextStyle(context),
                    ),
                  )
                ],
              ),
              LottieBuilder.asset(
                "assets/Animation - 1724090813977.json",
                height: Responsive.isWideDesktop(context) ? 500 : 400,
                width: Responsive.isWideDesktop(context) ? 500 : 400,
              ),
            ],
          );
  }
}
