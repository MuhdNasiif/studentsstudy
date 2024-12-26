import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart';

class GetApiStudyDog extends StatefulWidget {
   GetApiStudyDog({super.key});

  @override
  State<GetApiStudyDog> createState() => _GetApiStudyDogState();
}

class _GetApiStudyDogState extends State<GetApiStudyDog> {


Future<DogapiModel> getApiData()async{
var url= "https://dog.ceo/api/breeds/image/random";
var response =await get(Uri.parse(url));
var res = jsonDecode(response.body);
var data= DogapiModel.fromJson(res);
return data; 
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Api Study Get "),),
      body: FutureBuilder(
        future: getApiData(),
        builder: (context, snapshot) {
          return Column(
            children: [
              Center(child: Image.network(snapshot.data!.message.toString())),
            ],
          
          );
        }
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
       setState(() {
       });
       getApiData();
      }),
    );
  }
}



//----------------------Dog Api Get Model Class---------------------------------------
// To parse this JSON data, do
//
//     final dogapiModel = dogapiModelFromJson(jsonString);



DogapiModel dogapiModelFromJson(String str) => DogapiModel.fromJson(json.decode(str));

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
