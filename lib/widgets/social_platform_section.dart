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
                  url: "https://github.com/AbishekAB21",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SocialPlatformTile(
                  imageUrl: 'assets/linkedin.png',
                  url: "https://www.linkedin.com/in/abishek-ab-262b0921b/",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SocialPlatformTile(
                  imageUrl: 'assets/twitter.png',
                  url:
                      "https://x.com/magicalsilva21?t=DD_b7w8p7_WQ5th-xzK-fg&s=09",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ChangeNotifierProvider(
                  create: (context) => HoverProvider(),
                  child: SocialPlatformTile(
                    imageUrl: 'assets/instagram.png',
                    url:
                        "https://www.instagram.com/abishek__aravind?igsh=YzB3OWtqNTRnNjN3",
                  ))
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SocialPlatformTile(
                  imageUrl: 'assets/github-2.png',
                  url: "https://github.com/AbishekAB21",
                ),
              ),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SocialPlatformTile(
                  imageUrl: 'assets/linkedin.png',
                  url: "https://www.linkedin.com/in/abishek-ab-262b0921b/",
                ),
              ),
              ChangeNotifierProvider(
                create: (context) => HoverProvider(),
                child: SocialPlatformTile(
                  imageUrl: 'assets/twitter.png',
                  url:
                      "https://x.com/magicalsilva21?t=DD_b7w8p7_WQ5th-xzK-fg&s=09",
                ),
              ),
              ChangeNotifierProvider(
                  create: (context) => HoverProvider(),
                  child: SocialPlatformTile(
                    imageUrl: 'assets/instagram.png',
                    url:
                        "https://www.instagram.com/abishek__aravind?igsh=YzB3OWtqNTRnNjN3",
                  ))
            ],
          );
  }
}
