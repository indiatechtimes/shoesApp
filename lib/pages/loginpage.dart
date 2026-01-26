import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoesapp_ui/controller/logincontroller.dart';
import 'package:shoesapp_ui/widgets/form.dart';
import 'package:shoesapp_ui/widgets/loginimage.dart';
//import 'package:shoesapp_ui/widgets/passcodeformfield.dart';
import 'package:shoesapp_ui/widgets/signinbutton.dart';
import 'package:shoesapp_ui/widgets/signup.dart';
//import 'package:shoesapp_ui/widgets/usernameformfield.dart';

// ignore: must_be_immutable
class Loginpage extends StatelessWidget {
  LoginController controller = Get.put(LoginController());
  Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                //Login image
                Loginimage(),

                forms(),

                //forget passcode
                TextButton(onPressed: () {}, child: Text("Forget passcode")),

                //Sign in Button
                Signinbutton(),

                SizedBox(height: 70),

                // Don't have acccount - signup
                Signup(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
