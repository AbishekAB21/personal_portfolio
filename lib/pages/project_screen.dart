import 'package:flutter/material.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/github_button.dart';
import 'package:personal_portfolio/widgets/reusable_appbar.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

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
                            "Foodio",
                            style: Fonstyles.HeadingTextStyle(context),
                          ),
                          SizedBox(height: 10),
                          Image.asset(
                            "assets/foodio.png",
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
                        "Foodio is a food delivery application built using Flutter/Dart. The backend is handled by Google's Firebase. State management is done by Provider and GetX. Animations are integrated using Lottie.",
                        textAlign: TextAlign.justify,
                        style: Fonstyles.RegularTextStyle(context),
                      ),
                    ),
              
                    // Para 2
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Foodio is a food delivery application built using Flutter/Dart. The backend is handled by Google's Firebase. State management is done by Provider and GetX. Animations are integrated using Lottie.",
                        textAlign: TextAlign.justify,
                        style: Fonstyles.RegularTextStyle(context),
                      ),
                    ),
              
                    // Para 3
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Foodio is a food delivery application built using Flutter/Dart. The backend is handled by Google's Firebase. State management is done by Provider and GetX. Animations are integrated using Lottie.",
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
                            "Foodio",
                            style: Fonstyles.HeadingTextStyle(context),
                          ),
                        ),

                        // 1st Para
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Foodio is a food delivery application built using Flutter/Dart. The backend is handled by Google's Firebase. State management is done by Provider and GetX. Animations are integrated using Lottie.",
                            textAlign: TextAlign.justify,
                            style: Fonstyles.RegularTextStyle(context),
                          ),
                        ),

                        // 2nd Para
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Foodio is a food delivery application built using Flutter/Dart. The backend is handled by Google's Firebase. State management is done by Provider and GetX. Animations are integrated using Lottie.",
                            textAlign: TextAlign.justify,
                            style: Fonstyles.RegularTextStyle(context),
                          ),
                        ),

                        // 3rd Para
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Foodio is a food delivery application built using Flutter/Dart. The backend is handled by Google's Firebase. State management is done by Provider and GetX. Animations are integrated using Lottie.",
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
                      child: Image.asset(
                        "assets/foodio.png",
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
