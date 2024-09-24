import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NewApi extends StatefulWidget {
  const NewApi({Key? key}) : super(key: key);

  @override
  State<NewApi> createState() => _NewApiState();
}

class _NewApiState extends State<NewApi> {
  Future<ApiModel> getData() async {
    var url = "https://reqres.in/api/users?page=2";
    var response = await http.get(Uri.parse(url));
    var res = jsonDecode(response.body);
    final data = ApiModel.fromJson(res);
    return data;
  }

  // Future<ApiModel> getData() async {
  //   var url = "https://reqres.in/api/users?page=1";
  //   var response = await http.get(Uri.parse(url));
  //   var res = jsonDecode(response.body);
  //   final data = ApiModel.fromJson(res);
  //   return data;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Api"),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Colors.amber,
                    leading: Text(
                      snapshot.data!.data![index].id.toString(),
                    ),
                    title: Text(
                      snapshot.data!.data![index].firstName.toString(),
                    ),
                    subtitle: Text(
                      snapshot.data!.data![index].email.toString(),
                    ),
                    trailing: CircleAvatar(
                      backgroundImage: NetworkImage(
                        snapshot.data!.data![index].avatar.toString(),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: snapshot.data!.data!.length,
              ),
            );
          }
        },
      ),
    );
  }
}

//----------------model class---------------------------------------------------------
ApiModel apiModelFromJson(String str) => ApiModel.fromJson(json.decode(str));

String apiModelToJson(ApiModel data) => json.encode(data.toJson());

class ApiModel {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Datum>? data;
  Support? support;

  ApiModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(
                json["data"]!.map(
                  (x) => Datum.fromJson(x),
                ),
              ),
        support:
            json["support"] == null ? null : Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "support": support?.toJson(),
      };
}

class Datum {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Datum({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}

class Support {
  String? url;
  String? text;

  Support({
    this.url,
    this.text,
  });

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
