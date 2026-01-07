import 'package:flutter/material.dart';

import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';
import 'package:shoesapp_ui/pages/homepage.dart';

class Itemsbar extends StatelessWidget {
  const Itemsbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Get.to(Homepage());
            },
            child: Container(
              height: 35,
              width: 35,

              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(5),
              ),

              child: Icon(Icons.arrow_back),
            ),
          ),

          Spacer(),
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

                child: Icon(Icons.favorite, color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
