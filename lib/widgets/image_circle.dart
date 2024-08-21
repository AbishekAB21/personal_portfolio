import 'dart:typed_data';
import 'package:flutter/material.dart';

class ImageCircle extends StatelessWidget {
  final Uint8List? imageBytes;
  final void Function()? ontap;
  const ImageCircle({super.key, this.imageBytes, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 70,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          backgroundImage: imageBytes != null ? MemoryImage(imageBytes!) : null,
        ),
        Positioned(
          top: 100,
          left: 100,
          child: IconButton(
              onPressed: ontap,
              icon: Icon(
                Icons.add_a_photo_rounded,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),
        )
      ],
    );
  }
}
