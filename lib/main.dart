import 'package:flutter/material.dart';
import 'package:statefull_start/apistudy.dart';
import 'package:statefull_start/apiteach.dart';
import 'package:statefull_start/calculator.dart';
import 'package:statefull_start/colorschange.dart';
import 'package:statefull_start/image.dart';
import 'package:statefull_start/newapi.dart';
import 'package:statefull_start/newhome.dart';
import 'package:statefull_start/popup.dart';
import 'package:statefull_start/stack.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   ColorsChange(),
    );
  }
}
   



class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int number = 0;
  bool increasing = true;

  void counterIncDec() {
    setState(() {
      if (increasing) {
        number++;
        if (number >= 10) {
          increasing = false;
        }
      } else {
        number--;
        if (number <= 0) {
          increasing = true;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterIncDec,
        child: const Icon(Icons.add_circle_sharp),
      ),
    );
  }
}



//---------------------------------------------------------------------------------------------------------------------------------------------

// // import 'package:flutter/material.dart';

// class TextTile extends StatefulWidget {
//   const TextTile({Key? key}) : super(key: key);

//   @override
//   State<TextTile> createState() => TextTileState();
// }

// class TextTileState extends State<TextTile> {
//   var textCtr = TextEditingController();
//   List<String> data = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Chat App"),
//         backgroundColor: Colors.grey,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: data.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ListTile(
//                     leading: InkWell(
//                       onTap: () {
//                         // Show a dialog to edit the text
//                         showDialog(
//                           context: context,
//                           builder: (context) => AlertDialog(
//                             title: const Text('Edit Text'),
//                             content: TextField(
//                               controller: TextEditingController(text: data[index]),
//                               onChanged: (editedText) {
//                                 // Update the text in the list when the user edits
//                                 data[index] = editedText;
//                               },
//                             ),
//                             actions: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: const Text('Cancel'),
//                               ),
//                               TextButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     // Save the edited text and close the dialog
//                                     Navigator.of(context).pop();
//                                   });
//                                 },
//                                 child: const Text('Save'),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                       child: const Icon(Icons.edit),
//                     ),
//                     title: Text(data[index]),
//                     tileColor: Colors.amber,
//                     trailing: InkWell(
//                       onTap: () {
//                         setState(() {
//                           data.remove(data[index]);
//                         });
//                       },
//                       child: const Icon(Icons.delete),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: textCtr,
//               decoration: InputDecoration(
//                 border: const OutlineInputBorder(),
//                 suffixIcon: InkWell(
//                   onTap: () {
//                     // Check if the input text is not empty before adding it to the list
//                     if (textCtr.text.isNotEmpty) {
//                       setState(() {
//                         data.add(textCtr.text);
//                         textCtr.text = "";
//                       });
//                     }
//                   },
//                   child: const Icon(Icons.send),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

