import 'dart:io';

import 'package:flutter/material.dart';



class MyApp67 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('program 67'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'profile') {
                _showProfile();
              } else if (value == 'logout') {
                _logout(context);
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'profile',
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                ),
              ),
              PopupMenuItem<String>(
                value: 'logout',
                child: ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text('this is profile!'),
      ),
    );
  }

  void _showProfile() {
    // Replace this with your profile screen navigation logic
    print('Showing Profile');
  }

  void _logout(BuildContext context) {
    // Replace this with your logout logic
    // For simplicity, just pop the current screen
    Navigator.pop(exit(1));
  }
}
