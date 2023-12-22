import 'package:flutter/material.dart';



class MyApp55 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('program 55'),
        ),
        body: CheckboxTextViewToggle(),
      ),
    );
  }
}

class CheckboxTextViewToggle extends StatefulWidget {
  @override
  _CheckboxTextViewToggleState createState() => _CheckboxTextViewToggleState();
}

class _CheckboxTextViewToggleState extends State<CheckboxTextViewToggle> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          SizedBox(height: 20),
          if (isChecked)
            Text(
              'PiThaDiYA KARaN',
              style: TextStyle(fontSize: 18),
            ),
        ],
      ),
    );
  }
}
