import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/reusable_snackbar.dart';

class SkillsProvider with ChangeNotifier {
  String _selectedCategory = 'UI-UX';
  String get selectedCategory => _selectedCategory;

  void setCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  Future<void> saveSkill(String description, BuildContext context) async {
    try {
      await FirebaseFirestore.instance
          .collection("skills")
          .doc(selectedCategory)
          .set({'description': description});

      ReusableSnackBar().showSnackbar(
          context, "Skills updated!", Theme.of(context).colorScheme.tertiary);
    } catch (error) {
      print("Error saving skill data: $error");
      ReusableSnackBar().showSnackbar(
          context, "Error updating skill", Theme.of(context).colorScheme.error);
    }
  }
}
