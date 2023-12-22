import 'package:flutter/material.dart';


class MyApp53 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('program53'),
        ),
        body: BackgroundColorChanger(),
      ),
    );
  }
}

class BackgroundColorChanger extends StatefulWidget {
  @override
  _BackgroundColorChangerState createState() => _BackgroundColorChangerState();
}

class _BackgroundColorChangerState extends State<BackgroundColorChanger> {
  int colorIndex = 0;
  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.purple,
  ];

  void changeBackgroundColor() {
    setState(() {
      colorIndex = (colorIndex + 1) % colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors[colorIndex],
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            changeBackgroundColor();
          },
          child: Text('Change Background Color'),
        ),
      ),
    );
  }
}
