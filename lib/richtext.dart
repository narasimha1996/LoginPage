// import 'package:flutter/material.dart';
// import 'package:loginpage/circular_progress_indicator.dart';

// class RicherText extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _RicherText();
//   }
// }

// class _RicherText extends State<RicherText> {
//   @override
//   // ignore: non_constant_identifier_names
//   Widget build(BuildContext Context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Booking Status"),
//         ),
//         body: Container(
//             child: Center(
//                 child:InkWell(child: RichText(
//                     text: TextSpan(
//                         text: "Successfully Booked! ",
//                         style: TextStyle(color: Colors.black, fontSize: 20.0),
//                         children: [
//               TextSpan(
//                 text: "Download Ticket",
//                 style: TextStyle(
//                   color: Colors.red,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               WidgetSpan(
//                   child: Icon(
//                     Icons.emoji_emotions,
//                   ),
//                   alignment: PlaceholderAlignment.bottom)
//             ])),
//                     onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Indicator()));
//                     },
//                 ))));
//   }
// }
