// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
//
//
//
// class MyApp72 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'program 72 baki',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: PhoneCallScreen(),
//     );
//   }
// }
//
// class PhoneCallScreen extends StatefulWidget {
//   @override
//   _PhoneCallScreenState createState() => _PhoneCallScreenState();
// }
//
// class _PhoneCallScreenState extends State<PhoneCallScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _checkAndRequestPermission();
//   }
//
//   Future<void> _checkAndRequestPermission() async {
//     final status = await Permission.phone.status;
//
//     if (status != PermissionStatus.granted) {
//       await _showPermissionDialog();
//     }
//   }
//
//   Future<void> _showPermissionDialog() async {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Permission Required'),
//           content: Text('This app needs phone call permission to make calls.'),
//           actions: [
//             TextButton(
//               onPressed: () async {
//                 Navigator.of(context).pop();
//                 await _requestPermission();
//               },
//               child: Text('Allow'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Deny'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   Future<void> _requestPermission() async {
//     final status = await Permission.phone.request();
//     if (status == PermissionStatus.granted) {
//       // Permission granted, you can proceed with making phone calls.
//       // For demonstration purposes, let's print a message.
//       print('Phone call permission granted!');
//     } else {
//       // Permission denied, handle accordingly.
//       // For demonstration purposes, let's print a message.
//       print('Phone call permission denied.');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Phone Call App'),
//       ),
//       body: Center(
//         child: Text('Welcome to the Phone Call App'),
//       ),
//     );
//   }
// }
