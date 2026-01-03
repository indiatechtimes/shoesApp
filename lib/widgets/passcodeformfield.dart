import 'package:flutter/material.dart';

class Passcodeformfield extends StatelessWidget {
  const Passcodeformfield({super.key});

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
          obscureText: true,

          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            hintText: "Enter Passcode",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
