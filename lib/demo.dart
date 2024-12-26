import 'package:flutter/material.dart';

class DemoStudyss  extends StatelessWidget {
  const DemoStudyss ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Hello"),
        actions: const [
          Icon(Icons.add),
          Icon(Icons.minimize)
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Nasif A ")
          ], 
        ),
      ),
    );
  }
}