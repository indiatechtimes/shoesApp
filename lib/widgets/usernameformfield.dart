import 'package:flutter/material.dart';

class Usernameformfield extends StatelessWidget {
  const Usernameformfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 35,

        decoration: BoxDecoration(
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
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            hintText: "Enter Username",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
