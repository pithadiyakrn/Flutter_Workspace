import 'package:flutter/material.dart';
import 'package:program49/pragram%2050.dart';
import 'package:program49/prgram51.dart';
import 'package:program49/program52.dart';
import 'package:program49/program53.dart';
import 'package:program49/program54.dart';
import 'package:program49/program55.dart';
import 'package:program49/program56.dart';
import 'package:program49/program57.dart';
import 'package:program49/program58.dart';
import 'package:program49/program59.dart';
import 'package:program49/program62.dart';
import 'package:program49/program63.dart';
import 'package:program49/program64.dart';
import 'package:program49/program65.dart';
import 'package:program49/program66.dart';
import 'package:program49/program67.dart';
import 'package:program49/program68.dart';
import 'package:program49/program69.dart';
import 'package:program49/program70.dart';
import 'package:program49/program71.dart';
import 'package:program49/program74.dart';
import 'package:program49/program76.dart';
import 'package:program49/program77.dart';
import 'package:program49/program78.dart';

void main() {
  runApp(MyApp78());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('assignment 49 1'),
        ),
        body: ContainerApp2(),
      ),
    );
  }
}

class ContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
            child: Center(

            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(

                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(

                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Center(

                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Center(

                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Center(

                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Center(

                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Center(

                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Center(

                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class ContainerApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.red,
          child: Center(
            child: Image.network(
              'https://github.com/pithadiyakrn/pithadiyakrn/blob/main/IMG20221229144633.jpg', // Replace with your image URL
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Ocain Lake Compaground',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'kingarizen, swazarland',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.star,
              color: Colors.redAccent,
              size: 30,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.call,
                      size: 30,
                    ),
                    Text('Call'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.directions,
                      size: 30,
                    ),
                    Text('Route'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.share,
                      size: 30,
                    ),
                    Text('Share'),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(16),

          child: Text(
            'Lake Constance and Lake Zurich are in the Central Plateau, while Lake Thun, Lake Brienz, Lake Zug and Lake Lucerne are in the Pre-Alps and the northern section of the Alps. Lake Lugano and Lake Maggiore are on the southern side of the Swiss Alps.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
