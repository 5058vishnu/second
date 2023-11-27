import 'package:flutter/material.dart';
class SamplePath extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SamplePathState();
}

class _SamplePathState extends State<SamplePath> {

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: CustomPaint( //

          painter: MyPainter(),
        ),
      ),
    );
  }
}


class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    Path path = Path();
    path.moveTo(0, size.height / 2);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height / 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
