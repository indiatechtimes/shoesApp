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

              //formfield ---  UserName
              Usernameformfield(),

              SizedBox(height: 10),

              //formfield ---- passcode
              Passcodeformfield(),

              // Forget passcode
              TextButton(onPressed: () {}, child: Text("Forget Passcode")),

              //sign In  button
              Signinbutton(),

              SizedBox(height: 70),

              //Don't have account-SignUp
              Signup(),
            ],
          ),
        ),
      ),
    );
  }
}
