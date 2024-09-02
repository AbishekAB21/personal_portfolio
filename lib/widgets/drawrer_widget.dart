import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/admin.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/drawrer_buttons.dart';

class MyDrawrer extends StatelessWidget {
  const MyDrawrer({super.key});

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

// About Me
            DrawrerButton(
                title: "About Me",
                icon: Icon(
                  Icons.question_answer_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                )),
            SizedBox(
              height: 20,
            ),

// Skills
            DrawrerButton(
                title: "My Skills",
                icon: Icon(
                  Icons.auto_graph_outlined,
                  color: Theme.of(context).colorScheme.inversePrimary,
                )),
            SizedBox(
              height: 20,
            ),

// Projects
            DrawrerButton(
                title: "My Projects",
                icon: Icon(
                  Icons.construction_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                )),
            SizedBox(
              height: 20,
            ),

// Contact Me
            DrawrerButton(
                title: "Contact Me",
                icon: Icon(
                  Icons.mail_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                )),
          ],
        ));
  }
}
