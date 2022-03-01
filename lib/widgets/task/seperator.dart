import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 8, dashSpace = 3, startY = 0;
    final paint = Paint()
      ..color = const Color.fromRGBO(36, 45, 67, 1)
      ..strokeWidth = 2;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
