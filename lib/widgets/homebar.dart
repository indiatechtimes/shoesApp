import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as badges;
//import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
//import 'package:get/get_core/src/get_main.dart';
//import 'package:shoesapp_ui/controller/logincontroller.dart';

class Homebar extends StatelessWidget {
  final storage = GetStorage();

  Homebar({super.key});

  @override
  Widget build(BuildContext context) {
    final username = storage.read('username') ?? 'User';
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 35,
              width: 35,

              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(5),
              ),

              child: Icon(Icons.more_horiz_outlined),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "Welcome , $username",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),

                child: badges.Badge(
                  label: Text("3"),

                  child: Icon(Icons.notifications),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
