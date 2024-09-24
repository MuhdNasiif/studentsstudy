import 'package:flutter/material.dart';

class ColorsChange extends StatefulWidget {
  const ColorsChange({super.key});

  @override
  State<ColorsChange> createState() => _ColorsChangeState();
  
}

class _ColorsChangeState extends State<ColorsChange> {
  bool valuesChange=true; 
  int index=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container( height: 50,
            // width: 200,
            //   color:valuesChange==true ? Colors.red : Colors.amber
              
            // ),
            // SizedBox(height: 20,),
            //  Container( height: 50,
            // width: 200,
            //    color:valuesChange==true ? Colors.amber : Colors.red
            // ),
            Row(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: index==0?Colors.amber:Colors.pink,
                ),
                const SizedBox(width: 20,),
                 Container(
                  height: 50,
                  width: 50,
                  color: index==1?Colors.amber:Colors.pink,
                ),
                const SizedBox(width: 20,),
                 Container(
                  height: 50,
                  width: 50,
                  color: index==2?Colors.amber:Colors.pink,
                ),

              ],
            ),
            const SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: index==3?Colors.amber:Colors.pink,
                ),
                const SizedBox(width: 20,),
                 Container(
                  height: 50,
                  width: 50,
                  color: index==4?Colors.amber:Colors.pink,
                ),
                const SizedBox(width: 20,),
                 Container(
                  height: 50,
                  width: 50,
                  color: index==5?Colors.amber:Colors.pink,
                ),
              ],
            ),
            const SizedBox(height: 20,),
            FloatingActionButton(onPressed:() {
              
              if(index<=6){
              setState(() {
                index++;
              });}else {
                index=-1;
              }
            }, child: const Icon(Icons.add),)
          ],
        ),
      ),
    );
  }
}