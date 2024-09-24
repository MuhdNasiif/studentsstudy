import 'package:flutter/material.dart';

class DollartoInr extends StatefulWidget {
  const DollartoInr({super.key});

  @override
  State<DollartoInr> createState() => _DollartoInrState();
}

class _DollartoInrState extends State<DollartoInr> {
  TextEditingController rupeeController = TextEditingController();
  TextEditingController dollarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(" Dollar to Inr"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: rupeeController,
                decoration: const InputDecoration(
                    labelText: 'Indian Rupee', border: OutlineInputBorder()),
                onChanged: (value) {
                  double rupee = double.tryParse(value) ?? 1;
                  double dollar = rupee / 83.19;
                  dollarController.text = dollar.toString();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: dollarController,
                decoration: const InputDecoration(
                    labelText: 'US Dollar', border: OutlineInputBorder()),
                onChanged: (value) {
                  double dollar = double.tryParse(value) ?? 0;
                  double rupee = dollar * 83.19;
                  rupeeController.text = rupee.toString();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
