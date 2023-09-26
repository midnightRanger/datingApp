import 'dart:math';

import 'package:flutter/material.dart';

class MelonClipper extends CustomClipper<Path> {

  double radius = 80;
  @override
  Path getClip(Size size) {
    Path path = Path()
    ..arcTo(
        Rect.fromCircle(center: Offset(size.width/2, size.height/2), radius: radius), // Rect
        1.8 * pi,   // начальный угол
        1.0 * pi,  // конечный угол
        true)
    ..arcTo(
        Rect.fromCircle(center: Offset(size.width/2, size.height/2), radius: radius-20), // Rect
        1.8 * pi,   // начальный угол
        1.0 * pi,  // конечный угол
        true);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class WatermelonPainter extends CustomPainter {

  var paintChute = Paint()
    ..color = Colors.green
    ..strokeWidth = 5
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;
  
  var paintMain = Paint()
    ..color = Colors.red
    ..strokeWidth = 5
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

  @override
  void paint(Canvas canvas, Size size) {
    
    var pathChute = Path()
    ..arcTo(
        Rect.fromCircle(center: Offset(size.width/2, size.height/2), radius: 50), // Rect
        1.8 * pi,   // начальный угол
        1.0 * pi,  // конечный угол
        true);
    

    var pathMain = Path()..arcTo(
        Rect.fromCircle(center: Offset(size.width/2, size.height/2), radius: 40), // Rect
        1.8 * pi,   // начальный угол
        1.0 * pi,  // конечный угол
        true);

    
    canvas.drawPath(pathChute, paintChute);
    canvas.drawPath(pathMain, paintMain);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}