import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart';

class DogApiStudy extends StatefulWidget {
  const DogApiStudy({super.key});

  @override
  State<DogApiStudy> createState() => _DogApiStudyState();
}

class _DogApiStudyState extends State<DogApiStudy> {
  Future<DogApiModel> getDogApiData() async {
    var url = "https://dog.ceo/api/breeds/image/random";
    var response = await get(Uri.parse(url));
    var res = jsonDecode(response.body);
    var data = DogApiModel.fromJson(res);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Study"),
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: getDogApiData(),
            builder: (context, snapshot) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(snapshot.data!.message.toString()),
                ],
              );
            },
          )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {});
        getDogApiData();
      }),
    );
  }
}

//----------------------------------------------------------------

// To parse this JSON data, do
//
//     final dogApiModel = dogApiModelFromJson(jsonString);

DogApiModel dogApiModelFromJson(String str) =>
    DogApiModel.fromJson(json.decode(str));

String dogApiModelToJson(DogApiModel data) => json.encode(data.toJson());

class DogApiModel {
  String? message;
  String? status;

  DogApiModel({
    this.message,
    this.status,
  });

  factory DogApiModel.fromJson(Map<String, dynamic> json) => DogApiModel(
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
      };
}
