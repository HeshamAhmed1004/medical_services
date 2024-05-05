// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Custom Card Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Custom Card Example'),
//         ),
//         body: Center(
//             child: Container(
//               width: 300,
//               height: 400,
//               child: Card(
//                 elevation: 4.0,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 child: Column(
//                   children: <Widget>[
//                     ClipRRect(
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10.0),
//                         topRight: Radius.circular(10.0),
//                       ),
//                       child: Image.network(
//                         'https://example.com/image.jpg', // Replace with your image URL
//                         width: 300,
//                         height: 200,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     SizedBox(height: 10.0),
//                     Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Text(
//                         'Card Title',
//                         style: TextStyle(
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10.0),
//                       child: Text(
//                         'Card Subtitle',
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10.0),
//                     Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: RaisedButton(
//                         color: Colors.blue,
//                         textColor: Colors.white,
//                         onPressed: () {
//                           // Button action
//                         },
//                         child: Text('Button'),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//              )Button,
//             );
//       }
// }
