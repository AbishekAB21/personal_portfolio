import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/admin.dart';
import 'package:personal_portfolio/pages/home.dart';
import 'package:personal_portfolio/pages/splash.dart';
import 'package:personal_portfolio/provider/admin_screen_provider.dart';
import 'package:personal_portfolio/provider/theme_provider.dart';
import 'package:personal_portfolio/widgets/project_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyD0lhZES5rU5rJuYgHl_pNjhjAxcPv4dX4",
          appId: "1:739710601701:web:fb45477d4ffc7f6e74c70c",
          messagingSenderId: "739710601701",
          storageBucket: "portfolio-4d43d.appspot.com",
          authDomain: "portfolio-4d43d.firebaseapp.com",
          projectId: "portfolio-4d43d"));
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => AdminProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
      title: "Abishek AB - Portfolio",
    );
  }
}
