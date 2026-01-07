import 'package:flutter/material.dart';
import 'package:shoesapp_ui/widgets/imagelist.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Itemcontent extends StatelessWidget {
  final int index;
  const Itemcontent({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 226, 182, 179),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),

      child: Column(
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

                Text(Imagelist.pricelist[index]),
              ],
            ),
          ),

          SizedBox(height: 15),

          RatingBar.builder(
            initialRating: 3,

            itemSize: 30,
            direction: Axis.horizontal,
            itemCount: 5,
            minRating: 1,
            itemBuilder: (context, index) {
              return Icon(Icons.favorite, color: Colors.red);
            },
            onRatingUpdate: (value) {
              print("rating");
            },
          ),
        ],
      ),
    );
  }
}
