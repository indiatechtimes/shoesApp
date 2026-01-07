import 'package:flutter/material.dart';
import 'package:shoesapp_ui/widgets/imagelist.dart';

class Itemimage extends StatelessWidget {
  final int index;
  const Itemimage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Imagelist.imagelists[index]);
  }
}
