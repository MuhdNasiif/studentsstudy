import 'package:flutter/material.dart';
import 'package:statefull_start/clock.dart';
import 'package:statefull_start/image.dart';
import 'package:statefull_start/stack.dart';


class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body:  const TabBarView(
          children: <Widget>[
      Text("data"),
            StackStudy(),
              DateandTime(),
          ],
        ),
      ),
    );
  }
}
