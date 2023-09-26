import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key,
    this.imageRadius = 20,
  }) : super(key: key);

  final double imageRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.white,
        radius: imageRadius,
        child: CircleAvatar(
          backgroundImage: const AssetImage('images/author_katz.jpeg'),
          radius: imageRadius - 5,
        ));
  }
}
