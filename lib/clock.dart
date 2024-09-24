import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateandTime extends StatefulWidget {
  const DateandTime({super.key});

  @override
  State<DateandTime> createState() => DateandTimeState();
}

class DateandTimeState extends State<DateandTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("Clock"),
        backgroundColor: Colors.red.shade300,
      ),
      body: StreamBuilder(
          stream: Stream.periodic(const Duration(seconds: 1)),
          builder: (context, snapshot) {
            return Center(
                child: Text(
              DateFormat("HH:MM:ss.MS a").format(DateTime.now()),
              style: const TextStyle(fontSize: 30, letterSpacing: 5),
            ));
          }),
    );
  }
}
