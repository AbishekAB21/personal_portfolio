import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_web/image_picker_web.dart';

class AdminProvider with ChangeNotifier {
  final picker = ImagePicker();
  Uint8List? _imageBytes;

  Uint8List? get imageBytes => _imageBytes;

  Future<void> pickImage() async {
    // For web environment, use ImagePickerWeb
    final pickedImage = await ImagePickerWeb.getImageAsBytes();
    if (pickedImage != null) {
      _imageBytes = pickedImage;
      notifyListeners();
    }
  }

  Future<void> uploadProject(
      {required String projectName,
      required String projectDescription1,
      required String projectDescription2,
      required String projectDescription3,
      required String githubLink}) async {
    try {
      String projectLogo = '';

      if (_imageBytes != null) {
        String imageName = DateTime.now().millisecondsSinceEpoch.toString();
        final ref = FirebaseStorage.instance
            .ref()
            .child("project_images")
            .child(imageName);

        // Upload the image as bytes
        await ref.putData(_imageBytes!);
        projectLogo = await ref.getDownloadURL();
      }

      // Save all the details to the collection "projects"
      await FirebaseFirestore.instance.collection("projects").add({
        'projectName': projectName,
        'projectDescription1': projectDescription1,
        'projectDescription2': projectDescription2,
        'projectDescription3': projectDescription3,
        'githubLink': githubLink,
        'projectLogo': projectLogo,
      });

      // Clear image data after upload
      _imageBytes = null;
      notifyListeners();
    } catch (e) {
      print("Error uploading project: $e");
      rethrow;
    }
  }
}
