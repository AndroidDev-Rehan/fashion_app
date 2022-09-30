import 'package:fashion_app/constants.dart';
import 'package:fashion_app/screens/new_password.dart';
import 'package:fashion_app/screens/reset_password_otp.dart';
import 'package:fashion_app/widgets/custom_button.dart';
import 'package:fashion_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: resWidth(20)),
          child: Column(
            children: [
              resHeightBox(70),
              Text("Reset Password", style: headingStyle,),
              resHeightBox(50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: resWidth(26)),
                child:  Text("Reset Your Password\nBy Email Or Phone Number", style: normalRedStyle, textAlign: TextAlign.center,),
              ),
              resHeightBox(62),
              const CustomTextField(iconData: Icons.phone, hintText: "Enter Your Phone No"),
              resHeightBox(50),
              Text("OR", style: normalRedStyle,),
              resHeightBox(50),
              const CustomTextField(iconData: Icons.email, hintText: "Enter Your Email"),
              resHeightBox(268),
              CustomButton(onPressed: (){
                Get.to(ResetPasswordOTP());
              }, text: "Continue",),


            ],

          ),
        ),
      ),
    );
  }
}
