import 'package:flutter/material.dart';

class Xentice extends StatelessWidget {
  const Xentice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_sharp),
        title: const Text(
          "Xentice",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        actions: const [
          CircleAvatar(backgroundImage: AssetImage("asset/profile.jpg")),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 70,
            color: Colors.grey.shade400,
            child: const Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "1/4",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Property",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Property",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomBox(),
              CustomBox(),
              CustomBox(),
              CustomBox(),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomBox(),
              CustomBox(),
              CustomBox(),
              CustomBox(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Property Title', border: OutlineInputBorder()),
            ),
          ),
          Text(
            "Transaction Type",
            style: TextStyle(color: Colors.grey.shade400),
          ),
          Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue.shade900,
                    ),
                    shape: BoxShape.circle),
                child: Center(
                  child: Container(
                    height: 17,
                    width: 17,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade900, shape: BoxShape.circle),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Sell",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
                const SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue.shade900,
                    ),
                    shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 5,
              ),
             
              const Text(
                "Rent",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
                const SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue.shade900,
                    ),
                    shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Lease",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              
            ],
          ),
         const Text("pdijfhrwpijbf"),
          TextField(
              decoration: InputDecoration(
                  labelText: 'Price', border: OutlineInputBorder()),
            )
          
        ],
      ),
    );
  }
}

//--------------------------------------------------------

class CustomBox extends StatelessWidget {
  const CustomBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
      child: const Column(
        children: [
          Icon(Icons.gif_box),
          Text(
            "Industrial",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          Text(
            'Land',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
