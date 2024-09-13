import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/database/database_functions.dart';
import 'package:personal_portfolio/provider/hover_provider.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/skills_dialog.dart';
import 'package:provider/provider.dart';

class SkillsTile extends StatelessWidget {
  String title;
  String imageURL;
  double? height;
  double? width;
  SkillsTile(
      {super.key,
      required this.title,
      required this.imageURL,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    final hoverProvider = Provider.of<HoverProvider>(context);

    // Fetch the skills data before the hover logic to avoid unnecessary rebuilds
    return FutureBuilder<DocumentSnapshot>(
      future: DatabaseFunctions().fetchSkills(title),
      builder: (context, snapshot) {
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   return CircularProgressIndicator(
        //     color: Theme.of(context).colorScheme.inversePrimary,
        //   );
        // }

        final data = snapshot.data?.data() as Map<String, dynamic>?;

        if (data == null) {
          return Center(
            child: Text(
              "Skills not found! - Something went wrong",
              style: Fonstyles.RegularTextStyle(context),
            ),
          );
        }

        // Move hover logic and UI rendering out of FutureBuilder
        return MouseRegion(
          onEnter: (event) => hoverProvider.setHovering(true),
          onExit: (event) => hoverProvider.setHovering(false),
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SkillsDialog(
                    title: this.title,
                    desc: data['description'],
                  );
                },
              );
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              transform: hoverProvider.isHovering
                  ? (Matrix4.identity()..scale(1.1))
                  : Matrix4.identity(),
              child: Material(
                elevation: 5,
                child: Container(
                  height: 200,
                  width: 200,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        imageURL,
                        height: height ?? 80,
                        width: width ?? 80,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: Fonstyles.MediumTextStyle(context),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
