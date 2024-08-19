
import 'package:flutter/material.dart';

class ReusableAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const ReusableAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
     backgroundColor: Colors.transparent,
     foregroundColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(30);
}