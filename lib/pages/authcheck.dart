import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoesapp_ui/pages/homepage.dart';
import 'package:shoesapp_ui/pages/loginpage.dart';

class Authcheck extends StatelessWidget {
  final storage = GetStorage();
  Authcheck({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = storage.read('isLoggedIn') ?? false;

    if (isLoggedIn) {
      return Homepage();
    } else {
      return Loginpage();
    }
  }
}
