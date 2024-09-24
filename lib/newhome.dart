import 'package:flutter/material.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu_rounded),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_active),
            )
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'HI, Test Student',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 22,
                              fontFamily: 'Baloo Paaji 2',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.waving_hand,
                            color: Color.fromARGB(255, 135, 101, 51),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'BC12(Normal) - BCE-S1',
                        style: TextStyle(
                          color: Color(0xFF818181),
                          fontSize: 12,
                          fontFamily: 'Baloo Paaji 2',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Let’s Start Learning',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 12,
                          fontFamily: 'Baloo Paaji 2',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 35,
                    child: Icon(
                      Icons.person_outline_sharp,
                      size: 50,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                 CircleWidget(),
                 CircleWidget(),
                 CircleWidget(),
                 CircleWidget(),
                ],
              )
            ],
          ),
        ));
  }
}
//--------------------------------------------------------------------------------
class CircleWidget extends StatelessWidget {
  const CircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
                    children: [
                      Container(
                        width: 51.79,
                        height: 50.40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 2.0, color: const Color(0xFF3C3697)),
                          color: Colors.white,
                        ),
                        child: const Icon(Icons.home,color: Color(0xFF3C3697),),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Home Work',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 10,
                          fontFamily: 'Baloo Paaji 2',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  );
  }
}