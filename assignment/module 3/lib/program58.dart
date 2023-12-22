import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';


class MyApp58 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('program 58'),
        ),
        body: ColorPickerScreen(),
      ),
    );
  }
}

class ColorPickerScreen extends StatefulWidget {
  @override
  _ColorPickerScreenState createState() => _ColorPickerScreenState();
}

class _ColorPickerScreenState extends State<ColorPickerScreen> {
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Slider(
          value: selectedColor.red.toDouble(),
          onChanged: (value) {
            setState(() {
              selectedColor = Color.fromARGB(
                selectedColor.alpha,
                value.round(),
                selectedColor.green,
                selectedColor.blue,
              );
            });
          },
          min: 0,
          max: 255,
          label: 'Red',
        ),
        Slider(
          value: selectedColor.green.toDouble(),
          onChanged: (value) {
            setState(() {
              selectedColor = Color.fromARGB(
                selectedColor.alpha,
                selectedColor.red,
                value.round(),
                selectedColor.blue,
              );
            });
          },
          min: 0,
          max: 255,
          label: 'Green',
        ),
        Slider(
          value: selectedColor.blue.toDouble(),
          onChanged: (value) {
            setState(() {
              selectedColor = Color.fromARGB(
                selectedColor.alpha,
                selectedColor.red,
                selectedColor.green,
                value.round(),
              );
            });
          },
          min: 0,
          max: 255,
          label: 'Blue',
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
