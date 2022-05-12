import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Arc2 extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    final painter = Paint()
      ..color = Colors.grey
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
      ..style=PaintingStyle.stroke;
     final painterr = Paint()
       ..color = Colors.orange
      ..strokeWidth = 3
       ..strokeCap = StrokeCap.round
       ..style=PaintingStyle.stroke;
    canvas.drawArc(Rect.fromCenter(center: Offset(size.width/2,size.height/2) ,width: 70, height: 70),  2.9, 4.1, false, painter);
     canvas.drawArc(Rect.fromCenter(center: Offset(size.width/2,size.height/2), width: 70, height: 70), 2.3, 2, false, painterr);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;

  }

}