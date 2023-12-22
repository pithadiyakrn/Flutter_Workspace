import 'package:flutter/material.dart';



class MyApp57 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('program 57'),
        ),
        body: ColorSelectorScreen(),
      ),
    );
  }
}

class ColorSelectorScreen extends StatefulWidget {
  @override
  _ColorSelectorScreenState createState() => _ColorSelectorScreenState();
}

class _ColorSelectorScreenState extends State<ColorSelectorScreen> {
  Color selectedColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: Colors.red,
              groupValue: selectedColor,
              onChanged: (value) {
                setState(() {
                  selectedColor = value as Color;
                });
              },
            ),
            Text('Red'),
            Radio(
              value: Colors.green,
              groupValue: selectedColor,
              onChanged: (value) {
                setState(() {
                  selectedColor = value as Color;
                });
              },
            ),
            Text('Green'),
            Radio(
              value: Colors.blue,
              groupValue: selectedColor,
              onChanged: (value) {
                setState(() {
                  selectedColor = value as Color;
                });
              },
            ),
            Text('Blue'),
          ],
        ),
        SizedBox(height: 20),
        Container(
          width: 200,
          height: 200,
          color: selectedColor,
        ),
      ],
    );
  }
}
