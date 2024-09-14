// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/provider/contact_me_provider.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/reusable_button.dart';
import 'package:personal_portfolio/widgets/reusable_snackbar.dart';
import 'package:personal_portfolio/widgets/reusable_textformfield.dart';
import 'package:provider/provider.dart';

class ContactMeBox extends StatelessWidget {
  ContactMeBox({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController namecntrlr = TextEditingController();
  TextEditingController emailcntrlr = TextEditingController();
  TextEditingController messagecntrlr = TextEditingController();
  TextEditingController subjectcntrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final emailProvider = Provider.of<ContactMeProvider>(context);

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
      padding:
          EdgeInsets.only(left: 10, right: 10, bottom: padding, top: padding),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Form(
        key: _formKey,
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
              validator: (value) {
                if (value == null) {
                  return "Please enter your name";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            ReusableTextFormField(
              cntrlr: emailcntrlr,
              hinttext: "Email",
              validator: (value) {
                if (value == null) {
                  return "Please enter your email";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            ReusableTextFormField(
              cntrlr: subjectcntrlr,
              hinttext: "Subject",
              validator: (value) {
                if (value == null) {
                  return "Please enter the subject";
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            ReusableTextFormField(
              cntrlr: messagecntrlr,
              hinttext: "Message",
              lines: 5,
              validator: (value) {
                if (value == null) {
                  return "Please enter your message";
                }
                return null;
              },
            ),
            SizedBox(height: 30),
            ReusableButton(
              buttontext: "Send Message",
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  emailProvider
                      .sendEmail(namecntrlr.text, subjectcntrlr.text,
                          emailcntrlr.text, messagecntrlr.text)
                      .then(
                    (responseMessage) {
                      ReusableSnackBar().showSnackbar(
                          context,
                          responseMessage,
                          responseMessage == "Email sent successfully"
                              ? Theme.of(context).colorScheme.tertiary
                              : Theme.of(context).colorScheme.error);
                      namecntrlr.clear();
                      emailcntrlr.clear();
                      subjectcntrlr.clear();
                      messagecntrlr.clear();
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
