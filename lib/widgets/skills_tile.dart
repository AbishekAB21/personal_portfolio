// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class SkillsTile extends StatelessWidget {
  String title;
  String imageURL;
  double? height;
  double? width;
  SkillsTile({super.key, required this.title, required this.imageURL, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        height: 200,
        width: 200,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              imageURL,
              height: height?? 80,
              width: width?? 80,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: Fonstyles.MediumTextStyle(context),
            )
          ],
        ),
      ),
    );
  }
}
