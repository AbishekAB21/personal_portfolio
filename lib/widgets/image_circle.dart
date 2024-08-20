import 'package:flutter/material.dart';

class ImageCircle extends StatelessWidget {
  const ImageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 70,
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ),
        Positioned(
          top: 100,
          left: 100,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_a_photo_rounded,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),
        )
      ],
    );
  }
}
