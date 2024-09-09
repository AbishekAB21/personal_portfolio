// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/reusable_button.dart';
import 'package:personal_portfolio/widgets/reusable_snackbar.dart';
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
            ),
            SizedBox(
              height: 10,
            ),
            ReusableTextFormField(
              cntrlr: emailcntrlr,
              hinttext: "Email",
            ),
            SizedBox(
              height: 10,
            ),
            ReusableTextFormField(
              cntrlr: messagecntrlr,
              hinttext: "Message",
              lines: 5,
            ),
            SizedBox(
              height: 30,
            ),
            ReusableButton(
              buttontext: "Send Message",
              onTap: () => sendEmail(context),
            )
          ],
        ),
      ),
    );
  }

  Future<void> sendEmail(BuildContext context) async {
    final String name = namecntrlr.text.trim();
    final String email = emailcntrlr.text.trim();
    final String message = messagecntrlr.text.trim();

    if (name.isEmpty || email.isEmpty || message.isEmpty) {
      ReusableSnackBar().showSnackbar(context, "Please fill all the fields.",
          Theme.of(context).colorScheme.error);
    }

    Email mail = Email(
      body: "Name: $name \nEmail: $email \nMessage: $message",
      subject: 'Contacting through portfolio',
      recipients: ['abishekabofficial@gmail.com'],
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(mail);
      ReusableSnackBar().showSnackbar(
          context,
          "Message has been sent successfully",
          Theme.of(context).colorScheme.tertiary);
      namecntrlr.clear();
      emailcntrlr.clear();
      messagecntrlr.clear();
    } catch (error) {
      print(error);
      ReusableSnackBar().showSnackbar(context, "Error sending message",
          Theme.of(context).colorScheme.error);
    }
  }
}
