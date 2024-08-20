
import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class ReusableAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  final String appBarTitle;
  const ReusableAppBarWidget({
    super.key,  required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
     backgroundColor: Colors.transparent,
     foregroundColor: Theme.of(context).colorScheme.inversePrimary,
     title: Text(appBarTitle, style: Fonstyles.HeadingTextStyle3(context),),
     centerTitle: true,
     forceMaterialTransparency: true,
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(30);
}