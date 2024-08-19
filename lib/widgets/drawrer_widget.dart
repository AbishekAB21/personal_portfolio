import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/provider/theme_provider.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:provider/provider.dart';

class MyDrawrer extends StatelessWidget {
  const MyDrawrer({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Drawer(
        elevation: 0,
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
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dark Mode",
                    style: Fonstyles.RegularTextStyle(context),
                  ),
                  CupertinoSwitch(
                    activeColor: Theme.of(context).colorScheme.background,
                    
                      value: themeProvider.isDarkMode,
                      onChanged: (value) {
                        themeProvider.toggleTheme();
                      }),
                ],
              ),
            )
          ],
        ));
  }
}
