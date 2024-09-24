import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

String input = '';
String output = '';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        input = '';
        output = '';
      } else if (buttonText == '=') {
        output = calculate();
        

      }
      else if (buttonText == '%') {
 
      output += '/100';                             
    } else {
        output += buttonText;
      }
    });
  }

  calculate() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(output);
      ContextModel cm = ContextModel();
      double result = exp.evaluate(EvaluationType.REAL, cm);
      output = input;
      return result.toString();
      
    
    } catch (e) {
      return 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(8.0),
              alignment: Alignment.bottomRight,
              child: Text(output,
                  style: const TextStyle(
                      fontSize: 32.0, fontWeight: FontWeight.bold)),
                      ),
          const Expanded(child: Divider(color: Colors.pink)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CulcButton(text: '7', onClick: () => buttonPressed("7")),
              CulcButton(text: '8', onClick: () => buttonPressed("8")),
              CulcButton(text: '9', onClick: () => buttonPressed("9")),
              CulcButton(text: '/', onClick: () => buttonPressed("/")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CulcButton(text: '4', onClick: () => buttonPressed("4")),
              CulcButton(text: '5', onClick: () => buttonPressed("5")),
              CulcButton(text: '6', onClick: () => buttonPressed("6")),
              CulcButton(text: '*', onClick: () => buttonPressed("*")),
              CulcButton(text: '%', onClick: () => buttonPressed("%")),
            ],
          ),
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CulcButton(text: '1', onClick: () => buttonPressed("1")),
              CulcButton(text: '2', onClick: () => buttonPressed("2")),
              CulcButton(text: '3', onClick: () => buttonPressed("3")),
              CulcButton(text: '-', onClick: () => buttonPressed("-")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CulcButton(text: '0', onClick: () => buttonPressed("0")),
              CulcButton(text: 'C', onClick: () => buttonPressed("C")),
              CulcButton(text: '=', onClick: () => buttonPressed("=")),
              CulcButton(text: '+', onClick: () => buttonPressed("+")),
            ],
          ),
        ],
      ),
    );
  }

  // calcButton(
  //   String text,
  // ) {
  //   return InkWell(
  //     onTap: () {
  //       setState(() {
  //       });
  //       buttonPressed(text);
  //     },
  //     child: Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Container(
  //         height: 50,
  //         width: 50,
  //         decoration: BoxDecoration(
  //             color: Colors.black,
  //             border: Border.all(color: Colors.amber),
  //             shape: BoxShape.circle),
  //         child: Center(
  //           child: Text(
  //             text,
  //             style: const TextStyle(color: Colors.amber, fontSize: 20.0),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
//---------------------------------------------------------------------------------------------------------------------

class CulcButton extends StatefulWidget {
  const CulcButton({super.key, required this.text, required this.onClick});

  final String text;
  final VoidCallback onClick;

  @override
  State<CulcButton> createState() => _CulcButtonState();
}

class _CulcButtonState extends State<CulcButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.amber),
              shape: BoxShape.circle),
          child: Center(
            child: Text(widget.text,
                style: const TextStyle(color: Colors.amber, fontSize: 20.0)),
          ),
        ),
      ),
    );
  }
}
