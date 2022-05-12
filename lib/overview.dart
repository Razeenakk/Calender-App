import 'package:flutter/material.dart';
import 'package:weather_ui/custom_paint/arc.dart';
import 'package:weather_ui/custom_paint/arc2.dart';
import 'package:weather_ui/custom_paint/arc3.dart';

import 'clipper/side_cut_clipper.dart';

class Overview extends StatefulWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  int index = 0;
  final months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December',];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://wallpaperaccess.com/full/1244555.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.segment_outlined,
                            color: Colors.grey, size: 37),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Overview',
                          style: TextStyle(color: Colors.grey, fontSize: 22),
                        ),
                      ],),
                    Icon(Icons.search, color: Colors.grey, size: 37),
                  ],),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Week',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text('Month', style: TextStyle(color: Colors.grey)),
                      Text('Year', style: TextStyle(color: Colors.grey)),
                    ],),
                ),
              ],),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: SideCutClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * .7,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.10),
                     child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (index > 0 && index <= 11) {
                                        setState(() {
                                          index--;
                                        });
                                      } else {
                                        index = 11;
                                      }
                                    },
                                    icon: Icon(Icons.arrow_back_ios),
                                  ),
                                  Text(
                                    months[index],
                                    style: TextStyle(fontSize: 27),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      if (index >= 0 && index < 11) {
                                        setState(() {
                                          index++;
                                        });
                                      } else {
                                        index = 0;
                                      }
                                    },
                                    icon: Icon(Icons.arrow_forward_ios),
                                  ),
                                ],),
                    ),
                    Container(
                        height:170,
                        width: 500,
                        //color: Colors.red,
                        child: CustomPaint(
                          painter: Arc(),
                          child: Center(
                              child: Text('128',style: TextStyle(fontSize: 35,fontWeight:FontWeight.w700),),
                          ),
                        )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          //color: Colors.green,
                          child: CustomPaint(
                            painter: Arc2(),
                            child: Center(child: Text('48',style: TextStyle(fontSize: 25,fontWeight:FontWeight.w700),
                            ),
                          ),
                        ),
                        ),
                        Container(
                          height: 200,
                          width: 150,
                         // color: Colors.red,
                          child: CustomPaint(
                            painter: Arc3(),
                            child: Center(child: Text('24',style: TextStyle(fontSize: 25,fontWeight:FontWeight.w700))),
                          ),
                        ),
                      ],)
                  ],),
              ),
            ),
          ),
          Positioned(
            top: 170,
            right: 40,
            child: CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 30,
              child: Icon(Icons.bar_chart, color: Colors.grey, size: 37,),
            ),
          ),
          Positioned(
            bottom: 210,
              left: 145,
              child: Column(
                children: [
                  Text('completed'),
                  Text('64%'),
                ],)
          ),
          Positioned(
              bottom: 55,
              left: 64,
              child: Column(
                children: [
                  Text('snoozed'),
                  Text('24%'),
                ],)
          ),
          Positioned(
              bottom: 55,
              left: 235,
              child: Column(
                children: [
                  Text('completed'),
                  Text('12%'),
                ],)
          )
        ],)
      ),
    );
  }
}
