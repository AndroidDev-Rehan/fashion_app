import 'package:fashion_app/screens/reset_password.dart';
import 'package:fashion_app/screens/sign_in_screen.dart';
import 'package:fashion_app/screens/signup_screen.dart';
import 'package:fashion_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      home: const WelcomeScreen(),
    );
  }
}

