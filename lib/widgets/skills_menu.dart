import 'package:flutter/material.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/provider/hover_provider.dart';
import 'package:personal_portfolio/widgets/skills_tile.dart';
import 'package:provider/provider.dart';

class SkillsMenu extends StatelessWidget {
  const SkillsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isTablet(context)
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SkillsTile(
                  title: "UI-UX",
                  imageURL: "assets/ui.png",
                ),
              ),
              SizedBox(height: 30,),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SkillsTile(
                  title: "Backend",
                  imageURL: "assets/backend.png",
                ),
              ),
              SizedBox(height: 30,),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SkillsTile(
                  title: "API",
                  imageURL: "assets/api.png",
                ),
              ),
              SizedBox(height: 30,),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SkillsTile(
                  title: "Everything else",
                  imageURL: "assets/wait-theres-more.png",
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(height: 30,),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SkillsTile(
                  title: "UI-UX",
                  imageURL: "assets/ui.png",
                ),
              ),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SkillsTile(
                  title: "Backend",
                  imageURL: "assets/backend.png",
                ),
              ),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SkillsTile(
                  title: "API",
                  imageURL: "assets/api.png",
                ),
              ),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SkillsTile(
                  title: "Everything else",
                  imageURL: "assets/wait-theres-more.png",
                  height: 100,
                  width: 100,
                ),
              )
            ],
          );
  }
}
