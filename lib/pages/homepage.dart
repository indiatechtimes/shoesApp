import 'package:flutter/material.dart';
import 'package:shoesapp_ui/widgets/bottomnavbar.dart';
//import 'package:badges/badges.dart' as badges;
import 'package:shoesapp_ui/widgets/homebar.dart';
import 'package:shoesapp_ui/widgets/imagelist.dart';
import 'package:shoesapp_ui/widgets/items.dart';
import 'package:shoesapp_ui/widgets/searchbox.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: const Color.fromARGB(255, 198, 217, 236),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //Homebar  More and notification bell
              Homebar(),

              //SearchBox  for searchig the items
              Searchbox(),

              //imagelist of home page thaat is horizontaly scrollable
              Imagelist(),

              // main item list
              Items(),
            ],
          ),
        ),



        bottomNavigationBar: Bottomnavbar(),
        
      ),
    );
  }
}
