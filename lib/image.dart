import 'package:flutter/material.dart';

class Imagestudy extends StatelessWidget {
  const Imagestudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iamge Study"),
      ),
      body: Column(
        children: [
          Image.asset(
            "asset/Screenshot (216).png",
          ),
          Container(
            height: 300,
            width: 200,
            color: Colors.amber,
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPyv4JFGLfaMV99VLNvo8qWPJR7MlV4DdR7w&s",fit: BoxFit.fill,))
        ],
      ),
    );
  }
}
