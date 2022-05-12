
// mport 'package:flutter/material.dart';
// import 'package:weather_ui/custom_paint/arc.dart';
//
// import 'clipper/side_cut_clipper.dart';
//
// class Overview extends StatefulWidget {
//   const Overview({Key? key}) : super(key: key);
//
//   @override
//   State<Overview> createState() => _OverviewState();
// }
//
// class _OverviewState extends State<Overview> {
//   int index = 0;
//   final months = [
//     'January',
//     'February',
//     'March',
//     'April',
//     'May',
//     'June',
//     'July',
//     'August',
//     'September',
//     'October',
//     'November',
//     'December',];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height*.80,
//             width: MediaQuery.of(context).size.width,
//             color: Colors.yellow,
//             child: Stack(
//               children: [
//                 //image
//                 //image
//                 //image
//                 //image
//                 ClipPath(
//                   clipper: SideCutClipper(),
//                   child: Container(
//                     padding: EdgeInsets.only(bottom: 250),
//                     height: 400,
//                     decoration: BoxDecoration(
//                         color: Colors.green,
//                         image: DecorationImage(
//                           image: NetworkImage(
//                               'https://wallpaperaccess.com/full/1244555.jpg'),
//                           fit: BoxFit.cover,
//                         )),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Icon(Icons.segment_outlined,
//                                 color: Colors.grey, size: 37),
//                             Padding(
//                               padding: const EdgeInsets.only(right: 160),
//                               child: Text(
//                                 'Overview',
//                                 style:
//                                 TextStyle(color: Colors.grey, fontSize: 22),
//                               ),
//                             ),
//                             Icon(
//                               Icons.search,
//                               color: Colors.grey,
//                               size: 37,
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Text(
//                               'Week',
//                               style: TextStyle(color: Colors.grey),
//                             ),
//                             Text('Month', style: TextStyle(color: Colors.grey)),
//                             Text('Year', style: TextStyle(color: Colors.grey)),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 187,
//                   right: 40,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.red,
//                     radius: 30,
//                     child: Icon(
//                       Icons.bar_chart,
//                       color: Colors.grey,
//                       size: 37,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   width: MediaQuery.of(context).size.width,
//                   top: 300,
//                   child: Container(
//                     color: Colors.red,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         IconButton(
//                           onPressed: () {
//                             if (index > 0 && index <= 11) {
//                               setState(() {
//                                 index--;
//                               });
//                             } else {
//                               index = 11;
//                             }
//                           },
//                           icon: Icon(Icons.arrow_back_ios),
//                         ),
//                         Text(
//                           months[index],
//                           style: TextStyle(fontSize: 27),
//                         ),
//                         IconButton(
//                           onPressed: () {
//                             if (index >= 0 && index < 11) {
//                               setState(() {
//                                 index++;
//                               });
//                             } else {
//                               index = 0;
//                             }
//                           },
//                           icon: Icon(Icons.arrow_forward_ios),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   color: Colors.purple,
//                   height: 100,
//                   width: 200,
//                 )
//               ],
//             ),
//           ),
