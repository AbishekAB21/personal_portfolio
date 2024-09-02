import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/add_projects_container.dart';
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
  final TextEditingController _githubController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableAppBarWidget(
        appBarTitle: "",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),

        child: Column(
          children: [

// Add New Project Section
            AddProjectContainer(
              formKey: _formKey,
              nameController: _nameController,
              descriptionController: _descriptionController,
              githubController: _githubController,
            ),

// Add New Skills Section

// Update Profile Picture Section

// Update About me and Project Desc part 
          ],
        ),
      ),
    );
  }
}
