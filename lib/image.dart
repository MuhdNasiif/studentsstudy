import 'package:flutter/material.dart';

class Imagestudy extends StatelessWidget {
  const Imagestudy({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Iamge Study"),),
      body: Column(
        children: [
          Text("Image Study"),
          Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            child: Image.asset("asset/profile.jpg",height: 100,width: 100,),
          ),
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY3yonslI62_x8DG9jXOLAQNv3Upv-Z1UDQg&s")
        ],
      ),
    );
  }
}