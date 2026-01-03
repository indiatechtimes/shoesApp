import 'package:flutter/material.dart';

//import 'package:shoesapp_ui/widgets/imagelist.dart';
class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.all(8),
      childAspectRatio: 0.75,
      children: [],
    );
  }
}
