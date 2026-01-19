import 'package:flutter/material.dart';

class forms extends StatelessWidget {
  forms({super.key});

  final TextEditingController usernameController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passcodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
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
    
        Padding(
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
              controller: passcodeController,
    
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Passcode cannot be empty";
                }
                if (value.length < 8) {
                  return "Passcode must be at least 8 characters";
                }
                if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
                  return "Passcode must contain at least one lowercase letter";
                }
                if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
                  return "Passcode must contain at least one uppercase letter";
                }
                if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
                  return "Passcode must contain at least one number";
                }
                if (!RegExp(r'(?=.*[@$!%*?&])').hasMatch(value)) {
                  return "Passcode must contain at least one special character (@\$!%*?&)";
                }
                return null;
              },
    
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: "Enter Passcode",
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
