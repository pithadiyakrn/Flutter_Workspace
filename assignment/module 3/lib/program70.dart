import 'package:flutter/material.dart';


class MyApp70 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media App',
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
        title: Text('Program 70'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            label: 'Video',
          ),
        ],
      ),
    );
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

