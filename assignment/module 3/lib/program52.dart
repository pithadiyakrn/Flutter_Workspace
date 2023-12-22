import 'package:flutter/material.dart';

class MyApp52 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('program 52'),
        ),
        body: CalculatorScreen(),
      ),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();

  String result = '';
  String operation = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Choose an operation:'),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Row(
            children: [
              Radio(
                value: 'add',
                groupValue: operation,
                onChanged: (value) {
                  setState(() {
                    operation = value.toString();
                  });
                },
              ),
              Text('Addition'),
              Radio(
                value: 'subtract',
                groupValue: operation,
                onChanged: (value) {
                  setState(() {
                    operation = value.toString();
                  });
                },
              ),
              Text('Subtraction'),
              Radio(
                value: 'multiply',
                groupValue: operation,
                onChanged: (value) {
                  setState(() {
                    operation = value.toString();
                  });
                },
              ),
              Text('Multiplication'),
              Radio(
                value: 'divide',
                groupValue: operation,
                onChanged: (value) {
                  setState(() {
                    operation = value.toString();
                  });
                },
              ),
              Text('Division'),
            ],
          ),
      ),
          SizedBox(height: 20),
          TextField(
            controller: number1Controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Enter number 1'),
          ),
          SizedBox(height: 10),
          TextField(
            controller: number2Controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Enter number 2'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              calculateResult();
            },
            child: Text('Calculate'),
          ),
          SizedBox(height: 20),
          Text('Result: $result'),
        ],
      ),
    );
  }

  void calculateResult() {
    double num1 = double.tryParse(number1Controller.text) ?? 0.0;
    double num2 = double.tryParse(number2Controller.text) ?? 0.0;

    setState(() {
      switch (operation) {
        case 'add':
          result = (num1 + num2).toString();
          break;
        case 'subtract':
          result = (num1 - num2).toString();
          break;
        case 'multiply':
          result = (num1 * num2).toString();
          break;
        case 'divide':
          if (num2 != 0) {
            result = (num1 / num2).toString();
          } else {
            result = 'Cannot divide by zero';
          }
          break;
        default:
          result = '';
      }
    });
  }
}
