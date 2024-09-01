import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/about_me.dart';
import 'package:personal_portfolio/widgets/animated_welcome_text.dart';
import 'package:personal_portfolio/widgets/drawrer_widget.dart';
import 'package:personal_portfolio/widgets/projects_done.dart';
import 'package:personal_portfolio/widgets/projects_list_view.dart';
import 'package:personal_portfolio/widgets/reusable_appbar.dart';
import 'package:personal_portfolio/widgets/welcome_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
        appBar: ReusableAppBarWidget(
          appBarTitle: "",
        ),
        drawer: MyDrawrer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: SingleChildScrollView(
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
                AboutMe(),
                SizedBox(
                  height: 20,
                ),

                // Projects
                ProjectsIntro(),
                SizedBox(
                  height: 10,
                ),
                ProjectsList(),

                // Contact me
              ],
            ),
          ),
        ));
  }
}
