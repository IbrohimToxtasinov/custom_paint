import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LinePaint extends StatelessWidget {
  const LinePaint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Painter"),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: CustomPaint(
            foregroundPainter: SnowMan(),
          ),
        ),
      ),
    );
  }
}

class SnowMan extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Draw the body
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = Colors.black;
    canvas.drawCircle(Offset(size.width / 2, size.height / 6), 80, paint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2 -80), 100, paint);
    canvas.drawCircle(Offset(size.width / 2, size.height /1.2-90), 150, paint);

    //Draw the eyes
    canvas.drawCircle(Offset(size.width * 0.41, size.height * 0.12),
        size.width * 1 / 9 - 35, Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 0.59, size.height * 0.12),
        size.width * 1 / 9 - 35, Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.4),
        size.width * 1 / 9 - 30, Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.45),
        size.width * 1 / 9 - 30, Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.35),
        size.width * 1 / 9 - 30, Paint()..color = Colors.black);

    //Draw the nose
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.15),
        size.width * 1 / 9 - 30, Paint()..color = Colors.orange);
    
    //Draw the mouth
    canvas.drawLine(
      Offset(size.width * 0.4, size.height * 0.2),
      Offset(size.width * 0.5, size.height * 0.22),
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 7
        ..color = Colors.black);
    canvas.drawLine(
      Offset(size.width * 0.5, size.height * 0.22),
      Offset(size.width * 0.6, size.height * 0.2),
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 7
        ..color = Colors.black);

      //Draw the hand
      canvas.drawLine(
      Offset(size.width * 0.05, size.height * 0.33),
      Offset(size.width * 0.25, size.height * 0.4),
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 7
        ..color = Colors.brown);
      canvas.drawLine(
      Offset(size.width * 0.75, size.height * 0.4),
      Offset(size.width * 0.95, size.height * 0.33),
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 7
        ..color = Colors.brown);
    
      //Draw the teeth
      canvas.drawCircle(Offset(size.width / 4.5, size.height / 1.13), 20, paint);
      canvas.drawCircle(Offset(size.width / 1.3, size.height / 1.13), 20, paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
