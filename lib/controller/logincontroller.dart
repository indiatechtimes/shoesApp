import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoesapp_ui/database/db_handler.dart';
import 'package:shoesapp_ui/pages/homepage.dart';

class LoginController extends GetxController {
  //LoginController controller = Get.find();
  final storage = GetStorage();
  var dbhandler = DBHandler();
  final usernameController = TextEditingController();
  final passcodeController = TextEditingController();

  final usernameError = RxnString();
  final passcodeError = RxnString();

  var username = "".obs;
  var passcode = "".obs;

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
      username.value = usernameController.text;
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
      passcode.value = passcodeController.text;
    }

    if (valid) {
      storage.write("isLoggedIn", true);
      storage.write("username", username.value);
      storage.write("passcode", passcode.value);
      Get.off(Homepage());

      /*dbhandler.insertData(
        controller.username.value,
        controller.passcodeController.text,
      );*/
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    passcodeController.dispose();
    super.onClose();
  }
}
