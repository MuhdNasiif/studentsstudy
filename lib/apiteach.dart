import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
 

class NewApiteach extends StatefulWidget {
  const NewApiteach({Key? key}) : super(key: key);

  @override
  State<NewApiteach> createState() => _NewApiState();
}

class _NewApiState extends State<NewApiteach> {



  
  Future<Listusers> getData() async {
    var url = "https://reqres.in/api/users?page=2";
    var response = await http.get(Uri.parse(url));
    var res = jsonDecode(response.body);
    final data = Listusers.fromJson(res);
    return data;
  }

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
                return const Center(child: CircularProgressIndicator());
              } else {
                return Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return  ListTile(
                        tileColor: Colors.amber,
                        leading: const Text(
                          "1",
                        ),
                        title: const Text(
                          "ASDFGHJ",
                        ),
                        subtitle: const Text(
                          "EFUHPIVUBWIUF",
                        ),
                        trailing: CircleAvatar(
                          backgroundColor: Colors.black,
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
            }));
  }
}

//--------------------------Model Class------------------------------------
// To parse this JSON data, do
//
//     final listusers = listusersFromJson(jsonString);

Listusers listusersFromJson(String str) => Listusers.fromJson(json.decode(str));

String listusersToJson(Listusers data) => json.encode(data.toJson());

class Listusers {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Datum>? data;
  Support? support;

  Listusers({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  factory Listusers.fromJson(Map<String, dynamic> json) => Listusers(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
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
