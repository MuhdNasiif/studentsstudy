import 'package:flutter/material.dart';

class StackStudy extends StatelessWidget {
  const StackStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          Positioned( 
            top: 20,
            left: 20,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.amber,
            ),
          ),
          Positioned(
            top: 40,
            left: 40,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 60,
            left: 60,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.pink,
            ),
          ),
          Positioned(
            top: 80,
            left: 80,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.black,
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: 120,
            left: 120,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 140,
            left: 140,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.grey,
            ),
          ),
          Positioned(
            top: 160,
            left: 160,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.purple,
            ),
          ),
          Positioned(
            top: 180,
            left: 140,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.orange,
            ),
          ),
          Positioned(
            top: 200,
            left: 120,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.teal,
            ),
          ),
          Positioned(
            top: 220,
            left: 100,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
