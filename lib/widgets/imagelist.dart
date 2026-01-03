import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Imagelist extends StatelessWidget {
  final List imagelists = [
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg",
    "assets/images/4.jpeg",
    "assets/images/5.jpeg",
    "assets/images/6.jpeg",
    "assets/images/7.jpeg",
    "assets/images/8.jpeg",
    "assets/images/9.jpeg",
    "assets/images/10.jpeg",
    "assets/images/11.jpeg",
  ];
  final List pricelist = [
    "\$99",
    "\$48",
    "\$99",
    "\$90",
    "\$101",
    "\$111",
    "\$89",
    "\$59",
    "\$75",
    "\$104",
    "\$99",
  ];
  Imagelist({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: imagelists.length,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                print("tapped");
              },
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Row(
                  children: [
                    SizedBox(
                      height: 110,
                      width: 110,

                      child: Image.asset(imagelists[index]),
                    ),
                    SizedBox(width: 20),

                    Column(
                      children: [
                        Text(
                          "Nike Shoe",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        Text(
                          "Men's Shoe",
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),

                        SizedBox(height: 20),

                        Text(
                          pricelist[index],
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart),
                      iconSize: 35,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
