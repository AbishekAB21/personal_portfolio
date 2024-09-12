import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/database/database_functions.dart';
import 'package:personal_portfolio/pages/project_screen.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    final database = DatabaseFunctions();

    return SizedBox(
        height: 250,
        child: StreamBuilder<QuerySnapshot>(
          stream: database.fetchProjects(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator(
                color: Theme.of(context).colorScheme.inversePrimary,
              );
            }

            final projects = snapshot.data!.docs;

            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final project =
                      projects[index].data() as Map<String, dynamic>;
                  final projectName = project['projectName'] ?? 'No Name';
                  final projectLogo = project['projectLogo'] ?? '';
                  final projectDesc1 =
                      project['projectDescription1'] ?? 'No Description';
                  final projectDesc2 =
                      project['projectDescription2'] ?? 'No Description';
                  final projectDesc3 =
                      project['projectDescription3'] ?? 'No Description';
                  final githubLink = project['githubLink'] ?? '';
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProjectScreen(
                              projectName: projectName,
                              projectLogo: projectLogo,
                              projectDesc1: projectDesc1,
                              projectDesc2: projectDesc2,
                              projectDesc3: projectDesc3,
                              githubLink: githubLink,
                            ),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: 250,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                                child: Image.asset(
                              "assets/laptop.png",
                              height: 80,
                              width: 80,
                            )),
                            SizedBox(height: 50),
                            Column(
                              children: [
                                Text(
                                  projectName,
                                  style: Fonstyles.HeadingTextStyle2(context)
                                      .copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });
          },
        ));
  }
}
