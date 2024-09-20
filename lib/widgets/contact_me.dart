import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isTablet(context)
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Get in touch!",
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
                      "Feel free to get in touch with me if you have any questions. You can drop a message using the contact me section below or you can reach out to me through my socials. Will do my best to reply to you ASAP. Looking forward to hearing from you!",
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                      style: Fonstyles.RegularTextStyle(context),
                    ),
                  )
                ],
              ),
              // LottieBuilder.asset(
              //   "assets/Animation - 1725809393188.json",
              //   height: Responsive.isWideDesktop(context) ? 300 : 300,
              //   width: Responsive.isWideDesktop(context) ? 300 : 300,
              // ),
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
                      "Get in touch!",
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
                      "Feel free to get in touch with me if you have any questions. You can drop a message using the contact me section to the right or you can reach out to me through my socials. Will do my best to reply ASAP. Looking forward to hearing from you !",
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                      style: Fonstyles.RegularTextStyle(context),
                    ),
                  )
                ],
              ),
              LottieBuilder.asset(
                "assets/Animation - 1725809393188.json",
                height: Responsive.isWideDesktop(context) ? 300 : 300,
                width: Responsive.isWideDesktop(context) ? 300 : 300,
              ),
            ],
          );
  }
}
