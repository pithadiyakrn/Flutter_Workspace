import 'package:flutter/material.dart';

class MyApp50 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('program 50'),
        ),
        body: ReverseNumberApp(),
      ),
    );
  }
}

class ReverseNumberApp extends StatefulWidget {
  @override
  _ReverseNumberAppState createState() => _ReverseNumberAppState();
}

class _ReverseNumberAppState extends State<ReverseNumberApp> {
  TextEditingController _inputController = TextEditingController();
  TextEditingController _outputController = TextEditingController();

  void _reverseNumber() {
    String inputText = _inputController.text.trim();
    if (inputText.isNotEmpty) {
      int inputNumber = int.parse(inputText);
      int reversedNumber = int.parse(inputNumber.toString().split('').reversed.join());
      _outputController.text = reversedNumber.toString();
    } else {
      _outputController.text = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _inputController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Enter a number',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _reverseNumber,
            child: Text('Reverse'),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _outputController,
            readOnly: true,
            decoration: InputDecoration(
              labelText: 'Reversed Number',
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _inputController.dispose();
    _outputController.dispose();
    super.dispose();
  }
}
