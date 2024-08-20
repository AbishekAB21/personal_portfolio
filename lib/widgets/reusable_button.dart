import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class ReusableButton extends StatelessWidget {
  final buttontext;
  final void Function()? onTap;
  const ReusableButton({super.key, required this.buttontext, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 250),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.secondary),
        child: Center(
            child: Text(
          buttontext,
          style: Fonstyles.HeadingTextStyle3(context),
        )),
      ),
    );
  }
}
