import 'package:flutter/cupertino.dart';

class Arc extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff63aa65)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawArc(Offset(100, 100) & Size(100, 100), 0, 2, true, paint1);


// TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}