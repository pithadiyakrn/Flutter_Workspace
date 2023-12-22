import 'package:flutter/material.dart';


class MyApp76 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'program 76',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InputScreen(),
    );
  }
}

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Number 1'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Number 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the next screen and pass the numbers
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      num1: double.tryParse(num1Controller.text) ?? 0,
                      num2: double.tryParse(num2Controller.text) ?? 0,
                    ),
                  ),
                );
              },
              child: Text('Calculate Sum'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final double num1;
  final double num2;

  ResultScreen({required this.num1, required this.num2});

  @override
  Widget build(BuildContext context) {
    double sum = num1 + num2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Result Screen'),
      ),
      body: Center(
        child: Text(
          'Sum: $sum',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
