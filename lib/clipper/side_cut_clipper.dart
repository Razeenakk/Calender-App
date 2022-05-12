import 'package:flutter/cupertino.dart';

class SideCutClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height*.15);
    path.lineTo(size.width,0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height*.15);

    return path;
    // TODO: implement getClip
    throw UnimplementedError();
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}