import 'package:flutter/material.dart';

class LeftFrontBumperCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var width = size.width;
    var height = size.height;

    Path path = Path();
    path.moveTo(width * 0.22, height * 0.05);
    path.lineTo(width * 0.18, height * 0.36);
    path.lineTo(width * 0.58, height * 0.36);
    path.lineTo(width * 0.62, height * 0.38);
    path.lineTo(width * 0.72, height * 0.625);
    path.lineTo(width * 0.70, height * 0.65);
    path.lineTo(width * 0.1, height * 0.66);
    path.lineTo(0, height);
    path.lineTo(width * 0.65, height * 0.95);
    path.lineTo(width * 0.72, height * 0.92);
    path.lineTo(width * 0.76, height * 0.89);
    path.lineTo(width * 0.80, height * 0.85);
    path.lineTo(width * 0.93, height * 0.60);
    path.lineTo(width * 0.98, height * 0.45);
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
