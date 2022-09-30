import 'package:fashion_app/screens/sign_in_screen.dart';
import 'package:fashion_app/screens/signup_screen.dart';
import 'package:fashion_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

///Figma name = Main Screen
///Width - 428
///Height - 926
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Scaffold(
        body: Column(
          children: [
            resHeightBox(229),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: resWidth(86)),
              child: Text("Fashion App Logo",
                style: TextStyle(
                  fontSize: Get.width*0.0934,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            resHeightBox(95),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: resWidth(43)),
              child: Text(
                  "Don't stress about the dress\nwe'll dress you to impress",
                style: TextStyle(
                  fontSize: resWidth(21),
                  color: secondaryColor,
                  wordSpacing: 2,
                  letterSpacing: 1
                ),
                textAlign: TextAlign.center,
              ),
            ),
            resHeightBox(202),
            CustomButton(
              onPressed: (){
                Get.to(SignInScreen());
              },
              text: "Sign In",
              horMargin: resWidth(20),
            ),
            resHeightBox(42),
            CustomButton(
              onPressed: (){
                Get.to(SignUpScreen());
              },
              text: "Sign Up",
              horMargin: resWidth(20),
            ),
          ],
        ),
      ),
    );
  }
}

