import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesapp_ui/widgets/imagelist.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Itemcontent extends StatelessWidget {
  final int index;
  const Itemcontent({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 198, 217, 236),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  Imagelist.name[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),

                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    Imagelist.pricelist[index],
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Text(
            "This is the description of the shoes product \nThis is the description of the shoes product \nThis is the description of the shoes product \nThis is the description of the shoes product \nThis is the description of the shoes product \nThis is the description of the shoes product \n ",
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Size:",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              ...List.generate(5, (index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('${index + 6}'),
                  ),
                );
              }),
            ],
          ),

          SizedBox(height: 10),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: InkWell(
                  onTap: () {
                    Get.showSnackbar(
                      GetSnackBar(
                        title: 'Wow! ',
                        backgroundColor: Colors.blue,
                        borderRadius: 15,

                        message: 'Item added to cart',
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add To Cart",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20),

                        Icon(Icons.shopping_cart),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag, color: Colors.red, size: 35),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
