// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class SkillsDialog extends StatelessWidget {
  String title;
  String? desc; // Make this required
   SkillsDialog({super.key, required this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 5,
      child: Container(
        //width: MediaQuery.of(context).size.width,
        width: 700,
        height: 200,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.background,
        ),
        child: Column(
          children: [

            Text(title, style: Fonstyles.HeadingTextStyle2(context),),
            SizedBox(height: 30,),
            Text("As for UI/UX I've worked with various state management tools like Provider, Getx, Bloc etc. Coming to the UI design I'm familiar with all of the UI related widgets offred by flutter. I've also familiarised myself with fluter animations as well.", 
            style: Fonstyles.RegularTextStyle(context),
            textAlign: TextAlign.justify,
            overflow: TextOverflow.clip,
            )
            ],
        ),
      ),
    );
  }
}
