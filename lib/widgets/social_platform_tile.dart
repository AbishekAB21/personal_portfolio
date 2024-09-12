import 'package:flutter/material.dart';
import 'package:personal_portfolio/provider/hover_provider.dart';
import 'package:provider/provider.dart';

class SocialPlatformTile extends StatelessWidget {
  String imageUrl;
  SocialPlatformTile({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final hoverProvider = Provider.of<HoverProvider>(context);

    return MouseRegion(
      onEnter: (event) => hoverProvider.setHovering(true),
      onExit: (event) => hoverProvider.setHovering(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        transform: hoverProvider.isHovering
            ? (Matrix4.identity()..scale(1.1))
            : Matrix4.identity(),
        child: Material(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                imageUrl,
                height: 60,
                width: 60,
              ),
            )),
      ),
    );
  }
}