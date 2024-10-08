import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseFunctions {

  FirebaseFirestore _firebase = FirebaseFirestore.instance;

  // Fetch projects 
 
 Stream<QuerySnapshot> fetchProjects() {
  
  return _firebase.collection("projects").snapshots();
 }
  

  // Fetch skills 

 Future <DocumentSnapshot> fetchSkills(String skillCategory) async{

    return await _firebase.collection("skills").doc(skillCategory).get();
  }
}