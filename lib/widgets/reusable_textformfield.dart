import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class ReusableTextFormField extends StatelessWidget {
  final TextEditingController cntrlr;
  final String hinttext;
  final Icon icon;
  final lines;
  const ReusableTextFormField(
      {super.key,
      required this.cntrlr,
      required this.hinttext,
      required this.icon, this.lines});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: EdgeInsets.symmetric(horizontal: 70),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        style: Fonstyles.RegularTextStyle(context),
        maxLines: lines ?? 1,
        controller: cntrlr,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: Fonstyles.RegularTextStyle(context),         
          hintFadeDuration: Durations.medium1,
          border: InputBorder.none,
          prefixIcon: icon,
          prefixIconColor: Theme.of(context).colorScheme.inversePrimary,
          
        ),
      ),
    );
  }
}