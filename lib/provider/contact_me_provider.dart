import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContactMeProvider extends ChangeNotifier {

  Future<String> sendEmail(
      String name, String subject, String email, String message) async {
    const serviceId = "service_jylsymf";
    const templateId = "template_8d3q0by";
    const publicKey = "8V51hc5fxugyGxk-Y";

    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({

        'service_id' : serviceId,
        'template_id' : templateId,
        'user_id' : publicKey,
        'template_params' : {

          'user_name' : name,
          'user_email' : email,
          'user_subject' : subject,
          'message' : message,
        }
      })
    );

    if(response.statusCode == 200){
      return "Email sent successfully";
    }else{
      return "Failed to send email";
    }
  }
}
