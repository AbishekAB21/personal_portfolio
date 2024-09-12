import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/add_projects_container.dart';
import 'package:personal_portfolio/widgets/add_skills_container.dart';
import 'package:personal_portfolio/widgets/reusable_appbar.dart';

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
  final TextEditingController _descriptionController2 = TextEditingController();
  final TextEditingController _descriptionController3 = TextEditingController();
  final TextEditingController _githubController = TextEditingController();

  final TextEditingController skillsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableAppBarWidget(
        appBarTitle: "",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Center(
            child: Column(
              children: [
               

                // Add New Project Section
                AddProjectContainer(
                  formKey: _formKey,
                  nameController: _nameController,
                  descriptionController: _descriptionController,
                  descriptionController2: _descriptionController2,
                  descriptionController3: _descriptionController3,
                  githubController: _githubController,
                ),

                SizedBox(height: 30,),

                // Add New Skills Section

                AddSkillsContainer(skillsController: skillsController,),

                // Update Profile Picture Section

                /* 
                    Make the projects and about me dynamic.
                    No need for a seperate firebase collection for that 
                    */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
