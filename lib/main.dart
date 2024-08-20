import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/home.dart';
import 'package:personal_portfolio/pages/splash.dart';
import 'package:personal_portfolio/provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
      title: "Abishek AB - Portfolio",
    );
  }
}
