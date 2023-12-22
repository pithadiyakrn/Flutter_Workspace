import 'package:flutter/material.dart';
import 'dart:math';

class MyApp56 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('program 56 baki'),
        ),
        body: ImagesAroundTextView(),
      ),
    );
  }
}

class ImagesAroundTextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Image.asset('assets/image1.jpg', width: 50, height: 50),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset('assets/image2.jpg', width: 50, height: 50),
          ),
          Positioned(
            left: 0,
            child: Image.asset('assets/image3.jpg', width: 50, height: 50),
          ),
          Positioned(
            right: 0,
            child: Image.asset('assets/image4.jpg', width: 50, height: 50),
          ),
          Text(
            'Hello, Flutter!',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
