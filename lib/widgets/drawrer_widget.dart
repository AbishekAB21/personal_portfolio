import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/admin.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

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
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => AdminScreen(),));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    Text(
                      "Admin Mode",
                      style: Fonstyles.RegularTextStyle(context),
                    ),
                    SizedBox(width: 10,),
                    Icon(
                      Icons.lock_rounded,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
