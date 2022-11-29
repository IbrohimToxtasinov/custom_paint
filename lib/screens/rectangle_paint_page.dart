import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RectanglePaint extends StatelessWidget {
  const RectanglePaint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Custom Painter"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.879,
          height: MediaQuery.of(context).size.height * 0.25,
          child: CustomPaint(
            foregroundPainter: FlagPainter(),
          ),
        ),
      ),
    );
  }
}

class FlagPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Bayrog'ning ko'k rangi
    var paint1 = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.blueAccent;
    final rect = Rect.fromPoints(Offset(size.height * 0, size.width * 0),
        Offset(size.height * 1.668, size.width * 0.2));
    canvas.drawRect(rect, paint1);

    //Bayrog'ning qizil rangi
    var paint2 = Paint()
      ..strokeWidth = 10
      ..color = Colors.redAccent;
    canvas.drawLine(Offset(size.width * 0, size.height * 0.35),
        Offset(size.width * 1, size.height * 0.35), paint2);
    canvas.drawLine(Offset(size.width * 0, size.height * 0.685),
        Offset(size.width * 1, size.height * 0.685), paint2);
        
    //Bayrog'ning yashil rangi
    var paint3 = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.green;
    final rect2 = Rect.fromPoints(Offset(size.height * 0, size.width * 0.42),
        Offset(size.height * 1.668, size.width * 0.6));
    canvas.drawRect(rect2, paint3);
    //Oy shakli
    var paint4 = Paint()
      ..strokeWidth = 10
      ..color = Colors.amber;
    canvas.drawLine(Offset(size.width * 0, size.height * 0.685),
        Offset(size.width * 1, size.height * 0.685), paint2);
    final arc1 = Path();
    arc1.moveTo(size.width * 1, size.height * 1);
    arc1.arcToPoint(Offset(size.width * 0.8, size.height * 0.2));
    canvas.drawPath(arc1, paint4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
