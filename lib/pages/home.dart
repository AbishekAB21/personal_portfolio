// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/about_me.dart';
import 'package:personal_portfolio/widgets/animated_welcome_text.dart';
import 'package:personal_portfolio/widgets/contact_me.dart';
import 'package:personal_portfolio/widgets/contact_me_box.dart';
import 'package:personal_portfolio/widgets/drawrer_widget.dart';
import 'package:personal_portfolio/widgets/projects_done.dart';
import 'package:personal_portfolio/widgets/projects_list_view.dart';
import 'package:personal_portfolio/widgets/reusable_appbar.dart';
import 'package:personal_portfolio/widgets/skills_menu.dart';
import 'package:personal_portfolio/widgets/skills_section.dart';
import 'package:personal_portfolio/widgets/social_platform_section.dart';
import 'package:personal_portfolio/widgets/welcome_section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey aboutMeKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey contactMeKey = GlobalKey();

  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: ReusableAppBarWidget(
          appBarTitle: "",
        ),
        drawer: MyDrawrer(
          aboutMeKey: aboutMeKey,
          myProjectsKey: projectsKey,
          myskillsKey: skillsKey,
          contactMeKey: contactMeKey,
          onSectionSelected: (key, {offset = 0.0}) => scrollToSection(key, offset: offset),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),

                // Welcome Section
                AnimatedWelcomeSection(),
                WelcomeSection(),
                SizedBox(
                  height: 15,
                ),

                // About Me
                Container(
                  key: aboutMeKey,
                  child: AboutMe()),
                SizedBox(
                  height: 20,
                ),

                // Skills
                Container(
                  key: skillsKey,
                  child: SkillsSection()),
                SizedBox(height: 10,),
                SkillsMenu(),
                SizedBox(height: 20,),
                

                // Projects
                Container(
                  key: projectsKey,
                  child: ProjectsIntro()),
                SizedBox(
                  height: 10,
                ),
                ProjectsList(),
                SizedBox(height: 30,),

                // Contact me
                Container(
                  key: contactMeKey,
                  child: ContactMeSection()),
                  SizedBox(
                  height: 10,
                ),
                ContactMeBox(),
                SizedBox(height: 30,),

                SocialPlatformSection(),
                SizedBox(height: 50,),

                Text("Designed and developed by Abishek", style: Fonstyles.SmallTextStyle(context),)
              ],
            ),
          ),
        ));
  }

   void scrollToSection(GlobalKey key, {double offset = 0.0}) {
  final RenderBox renderBox = key.currentContext?.findRenderObject() as RenderBox;
  final position = renderBox.localToGlobal(Offset.zero, ancestor: null).dy + _scrollController.offset;
  _scrollController.animateTo(
    position - offset,
    duration: Duration(seconds: 1),
    curve: Curves.easeInOut,
  );
}

}
