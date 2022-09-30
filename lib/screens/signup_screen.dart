import 'package:fashion_app/constants.dart';
import 'package:fashion_app/screens/sign_in_screen.dart';
import 'package:fashion_app/widgets/custom_button.dart';
import 'package:fashion_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: resWidth(20)),
          child: Column(
            children: [
              resHeightBox(65),
              Text("Sign Up", style: headingStyle,),
              resHeightBox(50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: resWidth(26)),
                child:  Text("Add Your Details To Sign In", style: normalRedStyle,),
              ),
              resHeightBox(51),
              const CustomTextField(iconData: Icons.person, hintText: "Enter Your Name"),
              resHeightBox(30),
              const CustomTextField(iconData: Icons.phone, hintText: "Enter Your Phone No"),
              resHeightBox(30),
              const CustomTextField(iconData: Icons.email, hintText: "Enter Your Email"),
              resHeightBox(30),
              const CustomTextField(iconData: Icons.lock, hintText: "Enter Your Password"),
              resHeightBox(30),
              const CustomTextField(iconData: Icons.lock, hintText: "Confirm Your Password"),
              resHeightBox(30),
              CustomButton(onPressed: (){}, text: "Sign Up", expanded: false, backColor: secondaryColor, textColor: Colors.white,),
              resHeightBox(20),
              Text("Already Have an Account ?", style: normalBlackStyle16,),
              resHeightBox(35),
              CustomButton(onPressed: (){
                Get.to(SignInScreen());
              }, text: "Sign In",),


            ],

          ),
        ),
      ),
    );
  }
}
