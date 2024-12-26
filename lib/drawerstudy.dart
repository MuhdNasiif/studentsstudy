import 'package:flutter/material.dart';
import 'package:statefull_start/drawerpage.dart';

class Drawerstudy extends StatelessWidget {
  const Drawerstudy({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Drawe Study"),
        
      ),
      drawer: const HomeDrawer(),
      body: const Column(
        children: [
          Center(child: Text("Nasif A"))
        ],
      ),
    );
  }
}








