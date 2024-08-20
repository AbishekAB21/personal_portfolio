import 'package:flutter/material.dart';
import 'package:personal_portfolio/widgets/reusable_appbar.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableAppBarWidget(),
    );
  }
}