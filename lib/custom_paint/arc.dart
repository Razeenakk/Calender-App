import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Arc extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {


    final painter = Paint()
      ..color = Colors.grey
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
    ..style=PaintingStyle.stroke;
    final painterr = Paint()
      ..color = Colors.teal
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
      ..style=PaintingStyle.stroke;

canvas.drawArc(Rect.fromCenter(center: Offset(size.width/2,size.height/2) ,width: 150, height: 150), 3.5, 3.7, false, painter);
    canvas.drawArc(Rect.fromCenter(center: Offset(size.width/2,size.height/2) ,width: 150, height: 150), 2.3, 3.8, false, painterr);

// TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
 return true;
  }

}