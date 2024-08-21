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
      required String projectDescription,
      required String githubLink}) async {
    String projectLogo = '';

    if (_imageBytes != null) {
      // Uploading the image to Firebase using putData for web
      String imageName = DateTime.now().millisecondsSinceEpoch.toString();
      final ref = FirebaseStorage.instance
          .ref()
          .child("project_images")
          .child(imageName);

      // Uploading the image as bytes
      await ref.putData(_imageBytes!);
      projectLogo = await ref.getDownloadURL();
    }

    // Saving all the details to the collection "projects"
    await FirebaseFirestore.instance.collection("projects").add({
      'projectName': projectName,
      'projectDescription': projectDescription,
      'githubLink': githubLink,
      'projectLogo': projectLogo,
    });

    // Clear image data after upload
    _imageBytes = null;
    notifyListeners();
  }
}
