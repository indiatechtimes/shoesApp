import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as badges;

class Homebar extends StatelessWidget {
  const Homebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 35,
              width: 35,

              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.circular(5),
              ),

              child: Icon(Icons.more_horiz_outlined),
            ),
          ),

          Spacer(),
          Padding(
            padding: const EdgeInsets.all(12),
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),

                child: badges.Badge(
                  label: Text("3"),

                  child: Icon(Icons.notifications),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
