import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class ReusableTextFormField extends StatelessWidget {
  final TextEditingController cntrlr;
  final String hinttext;
  final Icon? icon;
  final Color? color;
  final lines; 
  final FormFieldValidator<String>? validator;
  const ReusableTextFormField(
      {super.key,
      required this.cntrlr,
      required this.hinttext,
      this.icon, this.lines, this.color, this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: EdgeInsets.symmetric(horizontal: 70),
      decoration: BoxDecoration(
          color:color?? Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        validator: validator,
        style: Fonstyles.RegularTextStyle(context),
        maxLines: lines ?? 1,
        cursorColor: Theme.of(context).colorScheme.inversePrimary,
        controller: cntrlr,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: Fonstyles.RegularTextStyle(context),         
          hintFadeDuration: Durations.medium1,
          border: InputBorder.none,
          prefixIcon: icon ?? null,
          prefixIconColor: Theme.of(context).colorScheme.inversePrimary,
          
        ),
      ),
    );
  }
}
