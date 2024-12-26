import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:statefull_start/apistudy.dart';

class DogApis extends StatefulWidget {
  const DogApis({super.key});

  @override
  State<DogApis> createState() => _DogApisState();
}

class _DogApisState extends State<DogApis> {
  Future<DogApiModel> getApiData() async {
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
                future: getApiData(),
                builder: (context, snapshot) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(snapshot.data!.message.toString())
                    ],
                  );
                })),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {});

          getApiData();
        }));
  }
}

//-------------------------------------------------------------------------------

// To parse this JSON data, do
//
//     final dogapiModel = dogapiModelFromJson(jsonString);

DogapiModel dogapiModelFromJson(String str) =>
    DogapiModel.fromJson(json.decode(str));

String dogapiModelToJson(DogapiModel data) => json.encode(data.toJson());

class DogapiModel {
  String? message;
  String? status;

  DogapiModel({
    this.message,
    this.status,
  });

  factory DogapiModel.fromJson(Map<String, dynamic> json) => DogapiModel(
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
      };
}
