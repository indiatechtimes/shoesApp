import 'package:flutter/material.dart';
import 'package:shoesapp_ui/widgets/loginimage.dart';
import 'package:shoesapp_ui/widgets/passcodeformfield.dart';
import 'package:shoesapp_ui/widgets/signinbutton.dart';
import 'package:shoesapp_ui/widgets/signup.dart';
import 'package:shoesapp_ui/widgets/usernameformfield.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Login image
              Loginimage(),

              // formfild -- userName
              Usernameformfield(),

              SizedBox(height: 10),
              Passcodeformfield(),

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
    );
  }
}
