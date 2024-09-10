// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/reusable_button.dart';
import 'package:personal_portfolio/widgets/reusable_textformfield.dart';
import 'package:http/http.dart' as http; 

class ContactMeBox extends StatelessWidget {
  ContactMeBox({super.key});

  TextEditingController namecntrlr = TextEditingController();
  TextEditingController emailcntrlr = TextEditingController();
  TextEditingController messagecntrlr = TextEditingController();
  TextEditingController subjectcntrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
            cntrlr: subjectcntrlr,
            hinttext: "Subject",
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
            onTap: (){},
          )
        ],
      ),
    );
  }

  // Future sendEmail({
  //   required String name,
  //   required String email,
  //   required String subject,
  //   required String message,
  // }) async{

  //   final serviceId = 'service_jylsymf';
  //   final templateId = 'template_8d3q0by';
  //   final userId = '';

  //   final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

  //   final response = await http.post(url, 
  //   body: {
  //     'service_id' : serviceId,
  //     'template_id' : templateId,
  //     'user_id' : userId, 
  //   });

  //   print(response.body);
  // }
  
}
