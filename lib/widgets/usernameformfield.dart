import 'package:flutter/material.dart';

class Usernameformfield extends StatelessWidget {
  Usernameformfield({super.key});

  final TextEditingController usernameController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
        child: Form(
          key: formKey,
          child: TextFormField(
            controller: usernameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Username cannot be empty";
              }
              if (value.length < 3) {
                return "Username must be 3 characters";
              }
              return null;
            },
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: "Enter Username",
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
