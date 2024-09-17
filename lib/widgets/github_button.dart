import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubButton extends StatelessWidget {

  final String url;
  GithubButton({super.key, required this.url});

  @override
  Widget build(BuildContext context) {

    final Uri _url = Uri.parse(url);

    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Error launching URL');
      }
    }
    
    return GestureDetector(
      onTap: _launchUrl,
      child: Material(
        elevation: 5,
        child: Container(
          width: 150,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.secondary),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/github.png",
                height: 30,
                width: 30,
              ),
              Text(
                "Github",
                style: Fonstyles.MediumTextStyle(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
