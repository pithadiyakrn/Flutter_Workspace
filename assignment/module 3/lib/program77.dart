import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class MyApp77 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'program 77 check karvano baki real device ma.',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _launchPhoneCall() async {
    const phoneNumber = 'tel:+1234567890'; // Replace with the desired phone number
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      // Handle error, e.g., show an error message
      print('Could not launch $phoneNumber');
    }
  }

  void _launchSMS() async {
    const phoneNumber = 'sms:+1234567890'; // Replace with the desired phone number
    const message = 'Hello!'; // Replace with the desired message

    final smsUrl = 'sms:$phoneNumber?body=$message';

    if (await canLaunch(smsUrl)) {
      await launch(smsUrl);
    } else {
      // Handle error, e.g., show an error message
      print('Could not launch $smsUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URL Launcher Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _launchPhoneCall,
              child: Text('Make Phone Call'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _launchSMS,
              child: Text('Send SMS'),
            ),
          ],
        ),
      ),
    );
  }
}
