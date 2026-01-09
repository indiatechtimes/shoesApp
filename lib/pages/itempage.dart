import 'package:flutter/material.dart';
import 'package:shoesapp_ui/widgets/itemcontent.dart';
import 'package:shoesapp_ui/widgets/itemimage.dart';
//import 'package:shoesapp_ui/widgets/homebar.dart';
import 'package:shoesapp_ui/widgets/itemsbar.dart';
//import 'package:shoesapp_ui/widgets/imagelist.dart';

class Itempage extends StatelessWidget {
  final int index;
  const Itempage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 217, 236),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Itemsbar(),
              Itemimage(index: index),
              Itemcontent(index: index),
            ],
          ),
        ),
      ),
    );
  }
}
