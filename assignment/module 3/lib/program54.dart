import 'package:flutter/material.dart';

class MyApp54 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('program 54'),
        ),
        body: FontSizeAdjuster(),
      ),
    );
  }
}

class FontSizeAdjuster extends StatefulWidget {
  @override
  _FontSizeAdjusterState createState() => _FontSizeAdjusterState();
}

class _FontSizeAdjusterState extends State<FontSizeAdjuster> {
  double fontSize = 20.0;

  void increaseFontSize() {
    setState(() {
      fontSize += 2.0;
    });
  }

  void decreaseFontSize() {
    setState(() {
      fontSize = fontSize > 2.0 ? fontSize - 2.0 : 2.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'PiThaDiYa KaRaN',
            style: TextStyle(fontSize: fontSize),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  increaseFontSize();
                },
                child: Text('Plus'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  decreaseFontSize();
                },
                child: Text('Minus'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
