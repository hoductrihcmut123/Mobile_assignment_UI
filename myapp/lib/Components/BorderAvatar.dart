import 'package:flutter/material.dart';
import 'dart:math' as math;

class BorderAvatar extends CustomPainter {
  final corner1;
  final corner2;
  final corner3;
  final corner4;
  final corner5;
  final corner6;
  final corner7;
  final range;
  final total;
  double pi = math.pi;

  BorderAvatar(
      {this.corner1,
        this.total,
        this.corner2,
        this.corner3,
        this.corner4,
        this.corner5,
        this.corner6,
        this.corner7,
        this.range});
  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 8;
    Rect myRect = const Offset(-50.0, -50.0) & const Size(148, 148);

    var paint1 = Paint()
      ..color = Color(0xffF5F5F5)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    var paint2 = Paint()
      ..color = Color(0xff0589F3)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double firstLineRadianStart = 22.5 / 180 * math.pi;
    double _unAnswered = (total - corner1 - corner2 - corner3 - corner4 - corner5 - corner6 - corner7 ) *
        range /
        total;
    double firstLineRadianEnd = (360 * _unAnswered + 22.5) * math.pi / 180;
    canvas.drawArc(
        myRect, firstLineRadianStart, firstLineRadianEnd, false, paint1);

    double _corner1 = (corner1) * range / total;
    double secondLineRadianEnd = getRadians(_corner1);
    canvas.drawArc(
        myRect, firstLineRadianEnd, secondLineRadianEnd, false, paint2);

    double _corner2 = (corner2) * range / total;
    double thirdLineRadianEnd = getRadians(_corner2);
    canvas.drawArc(myRect, firstLineRadianEnd + secondLineRadianEnd,
        thirdLineRadianEnd, false, paint1);

    double _corner3 = (corner3) * range / total;
    double fourthLineRadianEnd = getRadians(_corner3);
    canvas.drawArc(
        myRect,
        firstLineRadianEnd + secondLineRadianEnd + thirdLineRadianEnd,
        fourthLineRadianEnd,
        false,
        paint2);

    double _corner4 = (corner4) * range / total;
    double fifthLineRadianEnd = getRadians(_corner4);
    canvas.drawArc(
        myRect,
        firstLineRadianEnd + secondLineRadianEnd + thirdLineRadianEnd + fourthLineRadianEnd,
        fifthLineRadianEnd,
        false,
        paint1);

    double _corner5 = (corner5) * range / total;
    double sixthLineRadianEnd = getRadians(_corner5);
    canvas.drawArc(
        myRect,
        firstLineRadianEnd + secondLineRadianEnd + thirdLineRadianEnd + fourthLineRadianEnd + fifthLineRadianEnd,
        sixthLineRadianEnd,
        false,
        paint2);

    double _corner6 = (corner6) * range / total;
    double seventhLineRadianEnd = getRadians(_corner6);
    canvas.drawArc(
        myRect,
        firstLineRadianEnd + secondLineRadianEnd + thirdLineRadianEnd + fourthLineRadianEnd + fifthLineRadianEnd + sixthLineRadianEnd,
        seventhLineRadianEnd,
        false,
        paint1);

    double _corner7 = (corner7) * range / total;
    double eighthLineRadianEnd = getRadians(_corner7);
    canvas.drawArc(
        myRect,
        firstLineRadianEnd + secondLineRadianEnd + thirdLineRadianEnd + fourthLineRadianEnd + fifthLineRadianEnd + sixthLineRadianEnd + eighthLineRadianEnd,
        eighthLineRadianEnd,
        false,
        paint2);

    // drawArc(Rect rect, double startAngle, double sweepAngle, bool useCenter, Paint paint)
  }

  double getRadians(double value) {
    return (360 * value) * pi / 180;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}