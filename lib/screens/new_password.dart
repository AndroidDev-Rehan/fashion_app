import 'package:fashion_app/constants.dart';
import 'package:fashion_app/screens/reset_password_otp.dart';
import 'package:fashion_app/screens/signup_screen.dart';
import 'package:fashion_app/widgets/custom_button.dart';
import 'package:fashion_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: resWidth(20)),
          child: Column(
            children: [
              resHeightBox(70),
              Text("New Password", style: headingStyle,),
              resHeightBox(50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: resWidth(26)),
                child:  Text("Create New Password", style: normalRedStyle,),
              ),
              resHeightBox(70),
              const CustomTextField(iconData: Icons.email, hintText: "Enter Your Password"),
              resHeightBox(40),
              const CustomTextField(iconData: Icons.phone, hintText: "Confirm Your Password"),
              resHeightBox(385),
              CustomButton(onPressed: ()async{

                // await Get.dialog(
                //   Container(
                //     color: Colors.yellow,
                //     height: Get.height*0.4,
                //     child: Column(
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         SvgPicture.asset("assets/images/password_changed.svg"),
                //         resHeightBox(20),
                //         CustomButton(onPressed: (){}, text: "Sign In",),
                //
                //
                //       ],
                //     ),
                //   ),
                //
                // );

                await showDialog(
                    context: context,
                    builder: (_) =>  AlertDialog(
                      // shape: const RoundedRectangleBorder(
                      //     borderRadius:
                      //     BorderRadius.all(
                      //         Radius.circular(10.0))),
                      content: Builder(
                        builder: (context) {
                          // Get available height and width of the build area of this widget. Make a choice depending on the size.
                          // var height = MediaQuery.of(context).size.height;
                          // var width = MediaQuery.of(context).size.width;

                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SvgPicture.asset("assets/images/password_changed.svg", fit: BoxFit.fitWidth, ),
                              ),
                              resHeightBox(20),
                              CustomButton(onPressed: (){}, text: "Sign In",),
                            ],
                          );
                        },
                      ),
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                    )
                );


                // print("Hiragino Kaku Gothic ProN");
                // Get.to(ResetPasswordOTP());
              }, text: "Continue",),


            ],

          ),
        ),
      ),
    );
  }
}
