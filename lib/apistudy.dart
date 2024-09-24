import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ApiStudy extends StatefulWidget {
  const ApiStudy({super.key});

  @override
  State<ApiStudy> createState() => _ApiStudyState();
}

class _ApiStudyState extends State<ApiStudy> {
  var x=""; 
  var error="";




  Future<DogApiModel?>getData()async{
    var url= "https://dog.ceo/api/breeds/image/random";
    var response= await get(Uri.parse(url));
    var res =jsonDecode(response.body);
    
    if (response.statusCode==500){
      print("No data");
    }else if(response.statusCode==200){
      var data = DogApiModel.fromJson(res);
      return data;
    }else {}
    return null;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("API Study"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if(snapshot.hasData){  
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(snapshot.data!.message.toString()),
                  
              ],
            );
            }
            else if (snapshot.connectionState == ConnectionState.waiting){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            else{
              return const Text("Data");
            }
          }
        ),
      ),
      floatingActionButton: 
      FloatingActionButton(onPressed: (){
        setState(() {
          
        });
        getData();
      }),
    );
  }
}





class DogApiModel {
  String? message;
  String? status;

  DogApiModel({this.message, this.status});

  DogApiModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}
