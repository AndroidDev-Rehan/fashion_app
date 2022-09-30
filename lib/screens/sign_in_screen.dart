import 'package:fashion_app/constants.dart';
import 'package:fashion_app/screens/reset_password.dart';
import 'package:fashion_app/screens/signup_screen.dart';
import 'package:fashion_app/widgets/custom_button.dart';
import 'package:fashion_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: resWidth(20)),
          child: Column(
            children: [
              resHeightBox(70),
              Text("Sign In", style: headingStyle,),
              resHeightBox(50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: resWidth(26)),
                child:  Text("Add Your Details To Sign In", style: normalRedStyle,),
              ),
              resHeightBox(51),
              const CustomTextField(iconData: Icons.email, hintText: "Enter Your Email"),
              resHeightBox(30),
              const CustomTextField(iconData: Icons.phone, hintText: "Enter Your Phone No"),
              resHeightBox(35),
              CustomButton(onPressed: (){}, text: "Sign In", expanded: false, backColor: secondaryColor, textColor: Colors.white,),
              resHeightBox(10),
              Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                      onTap: (){
                        Get.to(const ResetPasswordScreen());
                      },
                      child: Text("Forget Password?", style: normalBlackStyle16,))),
              resHeightBox(35),
              Text("OR", style: normalRedStyle16,),
              resHeightBox(20),
              Text("Sign In With", style: normalBlackStyle16,),
              resHeightBox(35),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: resWidth(64)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.red)
                      ),
                      child: Image.asset("assets/images/facebook-icon.png"),
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      padding: EdgeInsets.all(4),

                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.red)
                      ),
                      child: Image.asset("assets/images/google.png"),
                    ),
                    Container(
                      height: 65,
                      width: 65,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.red)
                      ),
                      child: Image.asset("assets/images/twittter1.png", ),
                    ),
                  ],
                ),
              ),
              resHeightBox(30),
              Text("Dont Have an Account ?", style: normalBlackStyle16,),
              resHeightBox(38),
              CustomButton(onPressed: (){
                Get.to(const SignUpScreen());
              }, text: "Create an Account",),


            ],

          ),
        ),
      ),
    );
  }
}
