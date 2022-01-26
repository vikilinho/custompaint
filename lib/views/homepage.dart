import 'package:flutter/material.dart';

class LinePage extends StatelessWidget {
  const LinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePaint(),
      child: Container(),
    );
  }
}

class LinePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final painter = Paint()
      ..color = Colors.red
      ..strokeWidth = 3;
    final bluePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2;

    Offset p1 = Offset(10.0, size.height / 2); //start from left center
    Offset p2 =
        Offset(size.width - 100.0, size.height / 2); //end at right center

    canvas.drawLine(p1, p2, bluePaint);

    Offset start = Offset(10.0, size.height / 3); //start from the top center
    Offset end =
        Offset(size.width - 10.0, size.height / 3); //end at the bottom center
    canvas.drawLine(start, end, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
