import 'package:flutter/material.dart';

class Searchbox extends StatelessWidget {
  const Searchbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 40,

        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search...",
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
