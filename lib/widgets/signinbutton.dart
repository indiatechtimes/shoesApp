import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesapp_ui/pages/homepage.dart';

class Signinbutton extends StatelessWidget {
  Signinbutton({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (formKey.currentState!.validate()) {
            Get.off(Homepage());
          }
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
