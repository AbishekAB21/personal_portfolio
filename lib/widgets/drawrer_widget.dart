import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/admin.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/drawrer_buttons.dart';

class MyDrawrer extends StatelessWidget {
  final Function(GlobalKey, {double offset}) onSectionSelected;
  final GlobalKey aboutMeKey;
  final GlobalKey myProjectsKey;
  final GlobalKey myskillsKey;
  final GlobalKey contactMeKey;
  MyDrawrer(
      {super.key,
      required this.aboutMeKey,
      required this.myProjectsKey,
      required this.myskillsKey,
      required this.contactMeKey,
      required this.onSectionSelected});

  @override
  Widget build(BuildContext context) {
    // final themeProvider = context.watch<ThemeProvider>();

    return Drawer(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            DrawerHeader(
                child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      "assets/ProfilePic.jpeg",
                    ))),
            Text(
              "Abishek AB",
              style: Fonstyles.MediumTextStyle(context),
            ),
            Text(
              "Flutter Developer",
              style: Fonstyles.SmallTextStyle(context),
            ),
            SizedBox(
              height: 30,
            ),

// About Me
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                onSectionSelected(aboutMeKey, offset: 100.0);
              },
              child: DrawrerButton(
                  title: "About Me",
                  icon: Icon(
                    Icons.question_answer_rounded,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  )),
            ),
            SizedBox(
              height: 20,
            ),

// Skills
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: DrawrerButton(
                  title: "My Skills",
                  icon: Icon(
                    Icons.auto_graph_outlined,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  )),
            ),
            SizedBox(
              height: 20,
            ),

// Projects
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                onSectionSelected(myProjectsKey);
              },
              child: DrawrerButton(
                  title: "My Projects",
                  icon: Icon(
                    Icons.construction_rounded,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  )),
            ),
            SizedBox(
              height: 20,
            ),

// Contact Me
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: DrawrerButton(
                  title: "Contact Me",
                  icon: Icon(
                    Icons.mail_rounded,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  )),
            ),
            SizedBox(
              height: 20,
            ),

// Admin Mode
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminScreen(),
                      ));
                },
                child: DrawrerButton(
                    title: "Admin Mode",
                    icon: Icon(
                      Icons.lock,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ))),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
