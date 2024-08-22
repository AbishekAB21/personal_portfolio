import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/reusable_appbar.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableAppBarWidget(appBarTitle: ""),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Foodio",
                    style: Fonstyles.HeadingTextStyle(context),
                  ),
                  Image.asset(
                    "assets/foodio.png",
                    height: 200,
                    width: 200,
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              // Project Description
            )
          ],
        ),
      ),
    );
  }
}
