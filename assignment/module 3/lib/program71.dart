import 'package:flutter/material.dart';


class MyApp71 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Program 71',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    GalleryScreen(),
    AudioScreen(),
    VideoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('program 71'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Gallery'),
              onTap: () {
                _selectTab(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Audio'),
              onTap: () {
                _selectTab(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text('Video'),
              onTap: () {
                _selectTab(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex],
    );
  }

  void _selectTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10, // Set the background color to blue
      child: Center(
        child: Text(
          'Gallery Screen',
          style: TextStyle(
            color: Colors.black12, // Set the text color to white for better visibility
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}


class AudioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Container(
      color: Colors.red, // Set the background color to blue
      child: Center(
        child: Text(
          'Audio Screen',
          style: TextStyle(
            color: Colors.white, // Set the text color to white for better visibility
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, // Set the background color to blue
      child: Center(
        child: Text(
          'Video Screen',
          style: TextStyle(
            color: Colors.white, // Set the text color to white for better visibility
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

