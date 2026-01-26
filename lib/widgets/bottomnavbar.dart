import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoesapp_ui/database/db_handler.dart';

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final storage = GetStorage();
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,

        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () async {
              var name = storage.read('username');
              var passcode = storage.read('passcode');
              print("Username is $name");
              print("passcode is $passcode");
              final data = await DBHandler().readData();
              print(data);
            },
            icon: Icon(Icons.category_outlined),
          ),
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),

                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Sorry",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "No Item is Added Yet ! ",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
