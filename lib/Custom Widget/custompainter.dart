import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromRGBO(255, 233, 214, 1)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.quadraticBezierTo(size.width * 0.04, size.height * 0.79,
        size.width * 0.17, size.height * 0.80);
    path_0.cubicTo(size.width * 0.37, size.height * 0.80, size.width * 0.66,
        size.height * 0.81, size.width * 0.82, size.height * 0.80);
    path_0.quadraticBezierTo(
        size.width * 0.98, size.height * 0.80, size.width, size.height * 0.60);
    path_0.quadraticBezierTo(size.width, size.height * 0.15, size.width, 0);
    path_0.quadraticBezierTo(size.width * 0.75, 0, 0, 0);

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
