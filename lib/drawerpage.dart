
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Drawer(
              backgroundColor: Colors.amber,
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(left: 19, right: 20),
                  width: 346,
                  child: const Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(title: Text("data"),),
                        ListTile(title: Text("data"),),
                          ListTile(title: Text("data"),),
                            ListTile(title: Text("data"),),
                              ListTile(title: Text("data"),),
                                ListTile(title: Text("data"),),
                                  ListTile(title: Text("data"),),
                    ],
                  ),
                ),
              ),
            );
          }
        
  }

