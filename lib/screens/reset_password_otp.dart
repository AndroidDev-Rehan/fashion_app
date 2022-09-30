import 'package:fashion_app/constants.dart';
import 'package:fashion_app/screens/new_password.dart';
import 'package:fashion_app/screens/reset_password.dart';
import 'package:fashion_app/screens/signup_screen.dart';
import 'package:fashion_app/widgets/custom_button.dart';
import 'package:fashion_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class ResetPasswordOTP extends StatelessWidget {
  const ResetPasswordOTP({Key? key}) : super(key: key);

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
                padding: EdgeInsets.symmetric(horizontal: resWidth(0)),
                child:  Text("Please Check Your Phone\nWe Have Sent An OTP on Your Phone To Create New Password", style: normalRedStyle, textAlign: TextAlign.center,),
              ),
              resHeightBox(53),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: resWidth(9)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    otpSingleBox(),
                    otpSingleBox(),
                    otpSingleBox(),
                    otpSingleBox(),
                  ],
                ),
              ),
              resHeightBox(40),
              Padding(
                padding:  EdgeInsets.only(left: resWidth(10)),
                child: Row(
                  children: [
                    Text("Didn't receive ? ", style: normalRedStyle16,),
                    Text("Resend Code !", style: normalBlackStyle16,),
                  ],
                ),
              ),
              resHeightBox(362),
              CustomButton(onPressed: (){
                Get.to(const NewPasswordScreen());
              }, text: "Continue",),
            ],

          ),
        ),
      ),
    );
  }

  Widget otpSingleBox(){
    return Container(
      width: resWidth(70),
      // height: resWidth(70),
      decoration: BoxDecoration(
          color: HexColor("#D9D9D9")
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "*",
          hintStyle: TextStyle(color: Colors.black, fontSize: resWidth(20)),
          border: const OutlineInputBorder(),
          isDense: true,
          contentPadding:  EdgeInsets.only(left: resWidth(26), top: resWidth(18), bottom: resWidth(15)),
        ) ,

      ),
    );

  }
}
