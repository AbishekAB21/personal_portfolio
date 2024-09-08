import 'package:flutter/material.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/widgets/skills_tile.dart';

class SkillsMenu extends StatelessWidget {
  const SkillsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isTablet(context) ? 

    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SkillsTile(
          title: "UI/UX",
          imageURL: "assets/ui.png",
        ),
        SizedBox(height: 10,),
        SkillsTile(
          title: "Backend",
          imageURL: "assets/backend.png",
        ),
        SizedBox(height: 10,),
        SkillsTile(
          title: "API",
          imageURL: "assets/api.png",
        ),
        SizedBox(height: 10,),
        SkillsTile(
          title: "Everything else",
          imageURL: "assets/wait-theres-more.png",
          height: 100,
          width: 100,
        )
      ],
    ):
    
    
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SkillsTile(
          title: "UI/UX",
          imageURL: "assets/ui.png",
        ),
        SkillsTile(
          title: "Backend",
          imageURL: "assets/backend.png",
        ),
        SkillsTile(
          title: "API",
          imageURL: "assets/api.png",
        ),
        SkillsTile(
          title: "Everything else",
          imageURL: "assets/wait-theres-more.png",
          height: 100,
          width: 100,
        )
      ],
    );
  }
}
