import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/about_me.dart';
import 'package:personal_portfolio/widgets/drawrer_widget.dart';
import 'package:personal_portfolio/widgets/reusable_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: ReusableAppBarWidget(),
        drawer: MyDrawrer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
            // About Me
                AboutMe(),
            
            // 
              ],
            ),
          ),
        ));
  }
}
