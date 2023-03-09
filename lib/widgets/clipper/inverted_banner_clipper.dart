import 'package:flutter/material.dart';

class InvertedBannerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    path.addRect(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        height: size.height / 2,
        width: size.width,
      ),
    );
    path.fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
