import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesapp_ui/pages/homepage.dart';
//import 'package:shoesapp_ui/pages/homepage.dart';
//import 'package:shoesapp_ui/pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoesapp',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const Homepage(),
    );
  }
}
