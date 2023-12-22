// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
//
// class MyApp63 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('program 63 baki'),
//         ),
//         body: AlertDialogWithToast(),
//       ),
//     );
//   }
// }
//
// class AlertDialogWithToast extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           _showAlertDialog(context);
//         },
//         child: Text('Show AlertDialog'),
//       ),
//     );
//   }
//
//   void _showAlertDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Choose an Option'),
//           content: Text('Select your choice:'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 _showToast('Positive Button Pressed');
//                 Navigator.of(context).pop(); // Close the alert dialog
//               },
//               child: Text('Positive'),
//             ),
//             TextButton(
//               onPressed: () {
//                 _showToast('Negative Button Pressed');
//                 Navigator.of(context).pop(); // Close the alert dialog
//               },
//               child: Text('Negative'),
//             ),
//             TextButton(
//               onPressed: () {
//                 _showToast('Neutral Button Pressed');
//                 Navigator.of(context).pop(); // Close the alert dialog
//               },
//               child: Text('Neutral'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   void _showToast(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 1,
//       backgroundColor: Colors.black,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }
// }
