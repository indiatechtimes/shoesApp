import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoesapp_ui/controller/logincontroller.dart';

class forms extends StatelessWidget {
  forms({super.key});

  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passcodeController = TextEditingController();
  final LoginController controller = Get.put(LoginController());
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
              controller: controller.usernameController,

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Enter Username",
                border: InputBorder.none,
              ),
            ),
          ),
        ),

        Obx(
          () =>
              controller.usernameError.value == null
                  ? const SizedBox.shrink()
                  : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      controller.usernameError.value!,
                      style: const TextStyle(color: Colors.red, fontSize: 12),
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
              controller: controller.passcodeController,

              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: "Enter Passcode",
                border: InputBorder.none,
              ),
            ),
          ),
        ),

        Obx(
          () =>
              controller.passcodeError.value == null
                  ? const SizedBox.shrink()
                  : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      controller.passcodeError.value!,
                      style: const TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
        ),
      ],
    );
  }
}
