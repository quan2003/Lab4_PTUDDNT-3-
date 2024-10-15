import 'package:flutter/material.dart';
import 'dart:math'; // Importing dart:math library

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Dark blue AppBar background
        title: Text('Ask Me Anything'), // AppBar title
      ),
      body: Ball(), // Replacing Container() with the Ball StatefulWidget
      backgroundColor: Colors.blue, // Scaffold background color
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1; // Set initial ballNumber to 1

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) +
                1; // Generate a random number between 1 and 5
          });
          print(
              'ballNumber: $ballNumber'); // Print the ballNumber to the console
        },
        child: Image.asset(
            'images/ball$ballNumber.png'), // Use String interpolation to display the correct image
      ),
    );
  }
}
