import 'package:flutter/material.dart';
import 'package:personal_portfolio/provider/admin_screen_provider.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/image_circle.dart';
import 'package:personal_portfolio/widgets/reusable_appbar.dart';
import 'package:personal_portfolio/widgets/reusable_button.dart';
import 'package:personal_portfolio/widgets/reusable_textformfield.dart';
import 'package:provider/provider.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  // Form Key
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _githubController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableAppBarWidget(
        appBarTitle: "",
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Consumer<AdminProvider>(
            builder: (context, provider, child) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    margin: EdgeInsets.symmetric(horizontal: 200),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20)),
                    child: Form(
                      key: _formKey,
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
                          ImageCircle(imageBytes: provider.imageBytes, ontap: provider.pickImage,),
                          SizedBox(
                            height: 30,
                          ),
                          ReusableTextFormField(
                            cntrlr: _nameController,
                            hinttext: "Project Name",
                            icon: Icon(Icons.assessment_rounded),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ReusableTextFormField(
                            cntrlr: _descriptionController,
                            hinttext: "Project Description",
                            icon: Icon(Icons.description_rounded),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ReusableTextFormField(
                            cntrlr: _githubController,
                            hinttext: "Github URL",
                            icon: Icon(Icons.link_rounded),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ReusableButton(
                            buttontext: "Add To Database",
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                print("FORM VALIDATED");
                                await provider.uploadProject(
                                    projectName: _nameController.text,
                                    projectDescription:
                                        _descriptionController.text,
                                    githubLink: _githubController.text);
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        duration: Duration(seconds: 3),
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        content: Text(
                                          "Successfully added the new project",
                                          style: Fonstyles.RegularTextStyle(
                                              context),
                                        )));
                                        _descriptionController.clear();
                                        _nameController.clear();
                                        _githubController.clear();
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        duration: Duration(seconds: 3),
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .error,
                                        content: Text(
                                          "Error adding the new project",
                                          style: Fonstyles.RegularTextStyle(
                                              context),
                                        )));
                              }
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          )),
    );
  }
}
