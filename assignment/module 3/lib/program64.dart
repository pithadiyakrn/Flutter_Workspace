import 'package:flutter/material.dart';

class MyApp64 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('City Selection Example'),
        ),
        body: CitySelectionScreen(),
      ),
    );
  }
}

class CitySelectionScreen extends StatefulWidget {
  @override
  _CitySelectionScreenState createState() => _CitySelectionScreenState();
}

class _CitySelectionScreenState extends State<CitySelectionScreen> {
  String selectedCity = 'No city selected';

  final List<String> cities = ['New York', 'Paris', 'Tokyo', 'London', 'Sydney'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              _showCitySelectionDialog(context);
            },
            child: Text('Select City'),
          ),
          SizedBox(height: 20),
          Text(
            'Selected City: $selectedCity',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  void _showCitySelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a City'),
          content: SingleChildScrollView(
            child: ListBody(
              children: cities.map((city) {
                return RadioListTile(
                  title: Text(city),
                  value: city,
                  groupValue: selectedCity,
                  onChanged: (value) {
                    setState(() {
                      selectedCity = value as String;
                    });
                    Navigator.of(context).pop(); // Close the alert dialog
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
