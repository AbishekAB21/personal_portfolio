import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/skills_tile.dart';

class SkillsMenu extends StatelessWidget {
  const SkillsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

       SkillsTile(title: "UI/UX", imageURL:"assets/ui.png" ,),
       SkillsTile(title: "Backend", imageURL: "assets/backend.png",),
       SkillsTile(title: "API", imageURL: "assets/api.png",)
      ],
    );
  }
}