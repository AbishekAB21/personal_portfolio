import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class GithubButton extends StatelessWidget {
  const GithubButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        width: 150,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.secondary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/github.png",
              height: 30,
              width: 30,
            ),
            Text(
              "Github",
              style: Fonstyles.MediumTextStyle(context),
            ),
          ],
        ),
      ),
    );
  }
}
