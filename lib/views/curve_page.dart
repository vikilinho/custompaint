import 'package:flutter/material.dart';

class CurvePage extends StatelessWidget {
  const CurvePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomPaint(
        painter: CurvePainter(),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 3.0
      ..style = PaintingStyle.fill;
    Path path = Path()
      ..moveTo(0.0, 0.0)
      ..lineTo(0.0, 200)
      ..quadraticBezierTo(size.width / 2, 250, size.width, 200)
      ..lineTo(size.width, 0.0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
