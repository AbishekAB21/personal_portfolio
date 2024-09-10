// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/reusable_button.dart';
import 'package:personal_portfolio/widgets/reusable_textformfield.dart';

class ContactMeBox extends StatelessWidget {
  ContactMeBox({super.key});

  TextEditingController namecntrlr = TextEditingController();
  TextEditingController emailcntrlr = TextEditingController();
  TextEditingController messagecntrlr = TextEditingController();
  TextEditingController subjectcntrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double horizontalMargin;
    double padding = Responsive.isMobile(context) ? 20 : 50;

    if (Responsive.isWideDesktop(context)) {
      horizontalMargin = 300;
    } else if (Responsive.isDesktop(context)) {
      horizontalMargin = 200;
    } else if (Responsive.isTablet(context)) {
      horizontalMargin = 100;
    } else {
      horizontalMargin = 20; // For mobile devices
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
      padding: EdgeInsets.only(left: 10, right: 10, bottom: padding, top: padding),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Drop me a message !",
            style: Fonstyles.MediumTextStyle(context),
          ),
          SizedBox(height: 30),
          ReusableTextFormField(
            cntrlr: namecntrlr,
            hinttext: "Your Name",
          ),
          SizedBox(height: 10),
          ReusableTextFormField(
            cntrlr: emailcntrlr,
            hinttext: "Email",
          ),
          SizedBox(height: 10),
          ReusableTextFormField(
            cntrlr: subjectcntrlr,
            hinttext: "Subject",
          ),
          SizedBox(height: 10),
          ReusableTextFormField(
            cntrlr: messagecntrlr,
            hinttext: "Message",
            lines: 5,
          ),
          SizedBox(height: 30),
          ReusableButton(
            buttontext: "Send Message",
            onTap: () {
              // Your onTap logic here
            },
          ),
        ],
      ),
    );
  }
}
