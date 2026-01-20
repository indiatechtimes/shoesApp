import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesapp_ui/pages/homepage.dart';

class LoginController extends GetxController {
  final usernameController = TextEditingController();
  final passcodeController = TextEditingController();

  final usernameError = RxnString();
  final passcodeError = RxnString();

  

  void validateForm() {
    bool valid = true;

    // Username validation
    if (usernameController.text.isEmpty) {
      usernameError.value = "Username cannot be empty";
      valid = false;
    } else if (usernameController.text.length < 3) {
      usernameError.value = "Username must be 3 characters";
      valid = false;
    } else {
      usernameError.value = null;
    }

    // Passcode validation
    if (passcodeController.text.isEmpty) {
      passcodeError.value = "Passcode cannot be empty";
      valid = false;
    } else if (passcodeController.text.length < 8) {
      passcodeError.value = "Passcode must be at least 8 characters";
      valid = false;
    } else {
      passcodeError.value = null;
    }

    if (valid) {
      Get.off(Homepage()); // or Homepage()
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    passcodeController.dispose();
    super.onClose();
  }
}
