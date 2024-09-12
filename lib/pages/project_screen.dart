import 'package:flutter/material.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/github_button.dart';
import 'package:personal_portfolio/widgets/reusable_appbar.dart';

class ProjectScreen extends StatelessWidget {
  final projectLogo;
  final projectName;
  final projectDesc1;
  final projectDesc2;
  final projectDesc3;
  final githubLink;
  ProjectScreen(
      {super.key,
      required this.projectLogo,
      required this.projectName,
      required this.projectDesc1,
      required this.projectDesc2,
      required this.projectDesc3,
      required this.githubLink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableAppBarWidget(appBarTitle: ""),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Responsive.isMobile(context) || Responsive.isTablet(context)
            ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(
                            projectName,
                            style: Fonstyles.HeadingTextStyle(context),
                          ),
                          SizedBox(height: 10),
                          Image.network(
                            projectLogo,
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                    ),

                    // Para 1
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        projectDesc1,
                        textAlign: TextAlign.justify,
                        style: Fonstyles.RegularTextStyle(context),
                      ),
                    ),

                    // Para 2
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                       projectDesc2,
                        textAlign: TextAlign.justify,
                        style: Fonstyles.RegularTextStyle(context),
                      ),
                    ),

                    // Para 3
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                       projectDesc3,
                        textAlign: TextAlign.justify,
                        style: Fonstyles.RegularTextStyle(context),
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GithubButton(),
                    )
                  ],
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                           projectName,
                            style: Fonstyles.HeadingTextStyle(context),
                          ),
                        ),

                        // 1st Para
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            projectDesc1,
                            textAlign: TextAlign.justify,
                            style: Fonstyles.RegularTextStyle(context),
                          ),
                        ),

                        // 2nd Para
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            projectDesc2,
                            textAlign: TextAlign.justify,
                            style: Fonstyles.RegularTextStyle(context),
                          ),
                        ),

                        // 3rd Para
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            projectDesc3,
                            textAlign: TextAlign.justify,
                            style: Fonstyles.RegularTextStyle(context),
                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: GithubButton(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.network(
                       projectLogo,
                        height: Responsive.isWideDesktop(context) ? 400 : 300,
                        width: Responsive.isWideDesktop(context) ? 400 : 300,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
