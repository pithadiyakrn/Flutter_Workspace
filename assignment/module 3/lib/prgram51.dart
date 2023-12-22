import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class MyApp51 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputNumbersScreen(),
        '/result': (context) => ResultScreen(),
      },
    );
  }
}

class InputNumbersScreen extends StatelessWidget {
  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('program 51'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter the first number'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter the second number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int? firstNumber = int.tryParse(firstNumberController.text);
                int? secondNumber = int.tryParse(secondNumberController.text);

                if (firstNumber != null && secondNumber != null) {
                  if (secondNumber >= firstNumber) {
                    Navigator.pushNamed(
                      context,
                      '/result',
                      arguments: {'firstNumber': firstNumber, 'secondNumber': secondNumber},
                    );
                  } else {
                    // Handle invalid range
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Invalid Range'),
                          content: Text('The second number should be greater than or equal to the first number.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Invalid Input'),
                        content: Text('Please enter valid numbers.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Show Numbers'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    int firstNumber = args['firstNumber'];
    int secondNumber = args['secondNumber'];

    List<int> numbers = List.generate(secondNumber - firstNumber + 1, (index) => firstNumber + index);

    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Numbers between $firstNumber and $secondNumber:'),
            SizedBox(height: 10),
            Text(numbers.join(', ')),
          ],
        ),
      ),
    );
  }
}
