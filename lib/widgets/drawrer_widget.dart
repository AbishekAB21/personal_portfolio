import 'package:flutter/material.dart';

class MyDrawrer extends StatelessWidget {
  const MyDrawrer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(
            child:CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/ProfilePic.jpeg",)
          )
          ),
          Text("Abishek AB")
        ],
      )
     );
  }
}