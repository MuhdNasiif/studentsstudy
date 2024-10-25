import 'package:flutter/material.dart';

class GridviewStudy extends StatelessWidget {
  const GridviewStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview"),
      ),
      body: Column(
        children: [
          // Expanded(
          //   child: GridView.builder(
          //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 3,
          //         ),
          //         itemCount: 9,
          //         itemBuilder: (BuildContext context, int index) {
          //           return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Container(height: 60,width: 60,color: Colors.blue,),
          //           );
          //         }
          //       ),
          // ),

          Expanded(
            child: GridView.builder(
              itemCount: 700,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 9),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // height: 60,
                    // width: 60,
                    color: Colors.blueAccent,
                    child: Center(child: Text("$index")),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
