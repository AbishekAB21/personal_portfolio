// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/reusable_button.dart';
import 'package:personal_portfolio/widgets/reusable_textformfield.dart';

class ContactMeBox extends StatelessWidget {
  ContactMeBox({super.key});

  TextEditingController namecntrlr = TextEditingController();
  TextEditingController emailcntrlr = TextEditingController();
  TextEditingController messagecntrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 300),
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 50, top: 30),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Drop me a message !",
              style: Fonstyles.MediumTextStyle(context),
            ),
            SizedBox(
              height: 30,
            ),
            ReusableTextFormField(
              cntrlr: namecntrlr,
              hinttext: "Your Name",
              //icon: Icon(Icons.person),
              //color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(
              height: 10,
            ),
            ReusableTextFormField(
              cntrlr: emailcntrlr,
              hinttext: "Your Email",
              //icon: Icon(Icons.mail_rounded),
              //color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(
              height: 10,
            ),
            ReusableTextFormField(
              cntrlr: messagecntrlr,
              hinttext: "Message",
              lines: 5,
              //color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(
              height: 30,
            ),
            ReusableButton(
              buttontext: "Send Message",
              onTap: () {},
              //color: Theme.of(context).colorScheme.primary,
            )
          ],
        ),
      ),
    );
  }
}
