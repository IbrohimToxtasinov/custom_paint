import 'dart:math';

import 'package:flutter/material.dart';


//!---------------------------------------------------------------------------------------------------------------------------------------------

class VeryNiceSmile extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    //Draw the body
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = Colors.green;
    canvas.drawCircle(center, radius, paint);
    //Draw the mouth
    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = Colors.green
      ..strokeWidth = 15;
    final arc1 = Path();
    arc1.moveTo(size.width * 0.3, size.height * 0.7);
    arc1.arcToPoint(Offset(size.width * 0.7, size.height * 0.7),
        radius: const Radius.circular(50), clockwise: false);
    canvas.drawPath(arc1, smilePaint);

    //Draw the eyes
    canvas.drawCircle(Offset(size.width * 0.3, size.height * 0.4),
        size.width * 1 / 9 - 8, Paint()..color = Colors.green);
    canvas.drawCircle(Offset(size.width * 0.7, size.height * 0.4),
        size.width * 1 / 9 - 8, Paint()..color = Colors.green);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

//!-------------------------------------------------------------------------------------------------------------

class NiceSmile extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    //Draw the body
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = Colors.blueAccent;
    canvas.drawCircle(center, radius, paint);
    //Draw the mouth
    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = Colors.blueAccent
      ..strokeWidth = 15;
    final arc1 = Path();
    arc1.moveTo(size.width * 0.3, size.height * 0.7);
    arc1.arcToPoint(Offset(size.width * 0.7, size.height * 0.7),
        clockwise: false);
    canvas.drawPath(arc1, smilePaint);

    //Draw the eyes
    canvas.drawCircle(Offset(size.width * 0.3, size.height * 0.4),
        size.width * 1 / 9 - 8, Paint()..color = Colors.blueAccent);
    canvas.drawCircle(Offset(size.width * 0.7, size.height * 0.4),
        size.width * 1 / 9 - 8, Paint()..color = Colors.blueAccent);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

//!-------------------------------------------------------------------------------------------------------------

class MedicalSmile extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    //Draw the body
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = Colors.yellowAccent;
    canvas.drawCircle(center, radius, paint);
    //Draw the mouth
    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = Colors.yellowAccent
      ..strokeWidth = 15;
    final arc1 = Path();
    arc1.moveTo(size.width * 0.3, size.height * 0.7);
    arc1.arcToPoint(
      Offset(size.width * 0.7, size.height * 0.7),
      clockwise: true,
      radius: const Radius.circular(80),
    );
    canvas.drawPath(arc1, smilePaint);

    //Draw the eyes
    canvas.drawCircle(Offset(size.width * 0.3, size.height * 0.4),
        size.width * 1 / 9 - 8, Paint()..color = Colors.yellowAccent);
    canvas.drawCircle(Offset(size.width * 0.7, size.height * 0.4),
        size.width * 1 / 9 - 8, Paint()..color = Colors.yellowAccent);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

//!------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class BadSmile extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    //Draw the body
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = Colors.amber;
    canvas.drawCircle(center, radius, paint);
    //Draw the mouth
    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = Colors.amber
      ..strokeWidth = 15;
    final arc1 = Path();
    arc1.moveTo(size.width * 0.3, size.height * 0.75);
    arc1.arcToPoint(
      Offset(size.width * 0.7, size.height * 0.75),
      clockwise: true,
      radius: const Radius.circular(50),
    );
    canvas.drawPath(arc1, smilePaint);

    //Draw the eyes
    final arc2 = Path();
    arc2.moveTo(size.width * 0.25, size.height * 0.45);
    arc2.arcToPoint(Offset(size.width * 0.35, size.height * 0.4),
        clockwise: false, radius: const Radius.circular(50));
    canvas.drawPath(
        arc2,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..color = Colors.amber
          ..strokeWidth = 15);

    final arc3 = Path();
    arc3.moveTo(size.width * 0.65, size.height * 0.4);
    arc3.arcToPoint(Offset(size.width * 0.75, size.height * 0.45),
        clockwise: false, radius: const Radius.circular(50));
    canvas.drawPath(
        arc3,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..color = Colors.amber
          ..strokeWidth = 15);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class VeryBadSmile extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    //Draw the body
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = Colors.red;
    final arc0 = Path();
    arc0.moveTo(size.width * 0.1, size.height * 0.8);
    arc0.arcToPoint(
      Offset(size.width * 0.9, size.height * 0.3),
      clockwise: true,
      radius: const Radius.circular(20),
    );
    canvas.drawPath(arc0, paint);
    final arc = Path();
    arc.moveTo(100, 190);
    arc.arcToPoint(
      Offset(160, 170),
      clockwise: false,
      radius: const Radius.circular(50),
    );
    canvas.drawPath(arc, paint);

    //Draw the mouth
    final smilePaint = Paint()
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..color = Colors.red
      ..strokeWidth = 15;
    final arc1 = Path();
    arc1.moveTo(size.width * 0.3, size.height * 0.75);
    arc1.arcToPoint(
      Offset(size.width * 0.7, size.height * 0.75),
      clockwise: true,
      radius: const Radius.circular(20),
    );
    canvas.drawPath(arc1, smilePaint);

    //Draw the eyes
    final arc2 = Path();
    arc2.moveTo(size.width * 0.25, size.height * 0.45);
    arc2.arcToPoint(Offset(size.width * 0.35, size.height * 0.4),
        clockwise: false, radius: const Radius.circular(50));
    canvas.drawPath(
        arc2,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..color = Colors.red
          ..strokeWidth = 15);

    final arc3 = Path();
    arc3.moveTo(size.width * 0.65, size.height * 0.4);
    arc3.arcToPoint(Offset(size.width * 0.75, size.height * 0.45),
        clockwise: false, radius: const Radius.circular(50));
    canvas.drawPath(
        arc3,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..color = Colors.red
          ..strokeWidth = 15);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
