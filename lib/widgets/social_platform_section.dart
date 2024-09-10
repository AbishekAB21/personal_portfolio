import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:personal_portfolio/config/responsive.dart';
import 'package:personal_portfolio/provider/hover_provider.dart';
import 'package:personal_portfolio/widgets/social_platform_tile.dart';
import 'package:provider/provider.dart';

class SocialPlatformSection extends StatelessWidget {
  const SocialPlatformSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isTablet(context)
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SocialPlatformTile(
                  imageUrl: 'assets/github-2.png',
                ),
              ),
              SizedBox(height: 30,),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SocialPlatformTile(
                  imageUrl: 'assets/linkedin.png',
                ),
              ),
              SizedBox(height: 30,),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SocialPlatformTile(
                  imageUrl: 'assets/twitter.png',
                ),
              ),
              SizedBox(height: 30,),
              ChangeNotifierProvider(
                  create: (context) => HoverProvider(),
                  child: SocialPlatformTile(imageUrl: 'assets/instagram.png'))
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SocialPlatformTile(
                  imageUrl: 'assets/github-2.png',
                ),
              ),
              
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SocialPlatformTile(
                  imageUrl: 'assets/linkedin.png',
                ),
              ),
               
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SocialPlatformTile(
                  imageUrl: 'assets/twitter.png',
                ),
              ),
               
              ChangeNotifierProvider(
                  create: (context) => HoverProvider(),
                  child: SocialPlatformTile(imageUrl: 'assets/instagram.png'))
            ],
          );
  }
}
