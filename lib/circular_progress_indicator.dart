// import "package:flutter/material.dart";
// // ignore: unused_import
// import 'package:loginpage/Api%20calls.dart';
// // ignore: unused_import
// import 'package:percent_indicator/percent_indicator.dart';

// class Indicator extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _ProgressIndicator();
//   }
// }

// class _ProgressIndicator extends State<Indicator> {
//   @override
//   Widget build(BuildContext context) {
//     // ignore: unused_local_variable
//     TextStyle textStyle =
//         // ignore: deprecated_member_use
//         Theme.of(context).textTheme.title;

//     return Scaffold(
//       appBar: AppBar(title: Text("Loading")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children:<Widget> [
//             CircularPercentIndicator(
//               radius: 200,
//               animation: true,
//               animationDuration: 10000,
//               center: Icon(Icons.file_download),
//               progressColor: Colors.lightGreen,
//               percent: 1.0,
//               lineWidth: 10,
//               circularStrokeCap: CircularStrokeCap.round,
//               footer: Text("Downloading.....", style: TextStyle(fontSize: 20.0)),
            
//             ),
//             Padding(padding: EdgeInsets.all(20.0),
//             // ignore: deprecated_member_use
//              child:RaisedButton(
//               color: Theme.of(context).primaryColorDark,
//               textColor: Theme.of(context).primaryColorLight,
//               child: Text(
//                 "View file",
//                 textScaleFactor: 1.5,
//               ),
//               onPressed: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => UserStatus()));
//               }),
//               )
//           ],
//         )
            
//       ),
//     );
//   }
// }
