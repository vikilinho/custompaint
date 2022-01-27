import 'package:flutter/material.dart';

class Triangle extends StatelessWidget {
  const Triangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TrianglePainter(),
      child: Container(),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 3.0;

    Path path = Path();
    path.moveTo(size.width / 2, size.height / 3); //position on the screen
    path.lineTo(80.0, 500); //first line
    path.lineTo(size.width - 80.0, 500);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
