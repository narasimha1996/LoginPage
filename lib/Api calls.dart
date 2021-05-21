// import 'usermodel.dart';
// // ignore: unused_import
// import 'dart:convert';
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'package:http/http.dart' as http;

// class UserStatus extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("UserStatus", textDirection: TextDirection.ltr),
//         titleTextStyle: TextStyle(fontSize: 20.0, color: Colors.lime),
//       ),
//       body: HttpScreen(),
//     );
//   }
// }

// class HttpScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         // ignore: missing_required_param
//         child: FutureBuilder<UserModel>(
//       future: getUser(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           final user = snapshot.data;
//           return Text("UserId : ${user.userid} \n Id: ${user.id} \n Title:{user.title}");
//         } else if (snapshot.hasError) {
//           return Text(snapshot.error.toString());
//         }
//         return CircularProgressIndicator();
//       },
//     ));
//   }
// }

// // ignore: missing_return
// Future<UserModel> getUser() async {
//   var http;
//   http.response = await http.get('https://jsonplaceholder.typicode.com/todos/1');
//   if (http.response.statusCode == 200) {
//     final jsonUser = jsonDecode(http.response.body);
//     return UserModel.fromJson(jsonUser);
//   } else {
//     throw Exception;
//   }
// }
