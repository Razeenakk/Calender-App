import 'package:flutter/material.dart';
import 'package:weather_ui/clipper/side_cut_clipper.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: ClipPath(
          clipper:SideCutClipper(),
          child: Container(
            color: Colors.red,
            height: 300,
            width: 300,

              child:container(
                color:Colors.red,
                height:300,
                width:300,
    child:container(
    color:Colors.red,
    height:300,
    width:300,

            )
          ),
        )

      ),


    );
  }
}
