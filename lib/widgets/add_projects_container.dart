import 'package:flutter/material.dart';
import 'package:personal_portfolio/provider/admin_screen_provider.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/image_circle.dart';
import 'package:personal_portfolio/widgets/reusable_button.dart';
import 'package:personal_portfolio/widgets/reusable_textformfield.dart';
import 'package:provider/provider.dart';

class AddProjectContainer extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController descriptionController;
  final TextEditingController descriptionController2;
  final TextEditingController descriptionController3;
  final TextEditingController githubController;

  const AddProjectContainer({
    required this.formKey,
    required this.nameController,
    required this.descriptionController,
    required this.descriptionController2,
    required this.descriptionController3,
    required this.githubController,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AdminProvider>(
      builder: (context, provider, child) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          margin: EdgeInsets.symmetric(horizontal: 200),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20)),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Add a New Project",
                  style: Fonstyles.HeadingTextStyle2(context),
                ),
                SizedBox(
                  height: 20,
                ),
                ImageCircle(
                  imageBytes: provider.imageBytes,
                  ontap: provider.pickImage,
                ),
                SizedBox(
                  height: 30,
                ),
                ReusableTextFormField(
                  cntrlr: nameController,
                  hinttext: "Project Name",
                  icon: Icon(Icons.assessment_rounded),
                ),
                SizedBox(
                  height: 10,
                ),
                // Basic Desc
                ReusableTextFormField(
                  cntrlr: descriptionController,
                  hinttext: "Project Description - What kind of app is it ?",
                  icon: Icon(Icons.description_rounded),
                ),

                // Backend State management
                SizedBox(
                  height: 10,
                ),
                ReusableTextFormField(
                  cntrlr: descriptionController2,
                  hinttext: "Project Description - Technical side",
                  icon: Icon(Icons.description_rounded),
                ),

                // Conclusion
                SizedBox(
                  height: 10,
                ),
                ReusableTextFormField(
                  cntrlr: descriptionController3,
                  hinttext: "Project Description - Summary",
                  icon: Icon(Icons.description_rounded),
                ),
                SizedBox(
                  height: 10,
                ),
                ReusableTextFormField(
                  cntrlr: githubController,
                  hinttext: "Github URL",
                  icon: Icon(Icons.link_rounded),
                ),
                SizedBox(
                  height: 30,
                ),
                ReusableButton(
                  buttontext: "Add To Database",
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      print("FORM VALIDATED");
                      await provider.uploadProject(
                          projectName: nameController.text,
                          projectDescription1: descriptionController.text,
                          projectDescription2: descriptionController2.text,
                          projectDescription3: descriptionController3.text,
                          githubLink: githubController.text);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 3),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor:
                              Theme.of(context).colorScheme.tertiary,
                          content: Text(
                            "Successfully added the new project",
                            style: Fonstyles.RegularTextStyle(context),
                          )));
                      descriptionController.clear();
                      descriptionController2.clear();
                      descriptionController3.clear();
                      nameController.clear();
                      githubController.clear();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 3),
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Theme.of(context).colorScheme.error,
                          content: Text(
                            "Error adding the new project",
                            style: Fonstyles.RegularTextStyle(context),
                          )));
                    }
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
