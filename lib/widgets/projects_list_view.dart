import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6, 
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 15), 
          width: 250, 
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:
                  CrossAxisAlignment.center, 
              children: [
                Center(
                  child: Image.asset(
                    "assets/foodio.png",
                    height: 80,
                    width: 80,
                  ),
                ),
                SizedBox(height: 50),
                Column(
                  children: [
                    Text(
                      "Foodio - A Food Delivery App",
                      style: Fonstyles.HeadingTextStyle2(context).copyWith(
                        fontSize: 16, // Adjusted font size
                      ),
                    ),
                    
                    SizedBox(height: 5,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
