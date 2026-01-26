import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesapp_ui/controller/logincontroller.dart';
import 'package:shoesapp_ui/database/db_handler.dart';
//import 'package:shoesapp_ui/pages/homepage.dart';

// ignore: must_be_immutable
class Signinbutton extends StatelessWidget {
  
  var dbhandler = DBHandler();
  Signinbutton({super.key});

  
  @override
  Widget build(BuildContext context) {

    final controller = Get.find<LoginController>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          controller.validateForm();
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),

          child: Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
