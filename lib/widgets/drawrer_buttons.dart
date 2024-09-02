import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class DrawrerButton extends StatelessWidget {
  String title;
  Icon icon;
   DrawrerButton({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [ 
                    Text(
                      title,
                      style: Fonstyles.RegularTextStyle(context),
                    ),
                    //SizedBox(width: 30,),
                    icon,
                  ],
                ),
              );
  }
}