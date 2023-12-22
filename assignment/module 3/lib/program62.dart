import 'package:flutter/material.dart';


class MyApp62 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('program 62'),
        ),
        body: AlertDialogExample(),
      ),
    );
  }
}

class AlertDialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          _showAlertDialog(context);
        },
        child: Text('Click Here To Aler'),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.info,
                color: Colors.blue,
                size: 40,
              ),
              SizedBox(height: 10),
              Text('karan information.'),

            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
