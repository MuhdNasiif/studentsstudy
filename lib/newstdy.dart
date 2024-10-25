import 'package:flutter/material.dart';

class Newstdy extends StatelessWidget {
  const Newstdy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(71, 227, 142, 22),
      appBar: AppBar(
        leading: const Icon(Icons.network_wifi_1_bar),
        title: const Text("Flutter Study"),
      ),
      body:  Center(
        child: Column(
          children: [
        const Text("Hello World",),
        
        Container(
          decoration: const BoxDecoration(
             color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10))
            
          ),
          height: 60,
          width: 60,
         
          child: Center(
            child: const Column(
              children: [
                    Text("Hello"),
                    Text("2")
              ],
            ),
          ),
          
        )
          ],
        ),
      ),
    );
  }
}
