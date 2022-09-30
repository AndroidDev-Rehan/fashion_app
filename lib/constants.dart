import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Color primaryColor = Color.fromRGBO(255, 197, 41, 1);
const Color secondaryColor = Color.fromRGBO(245, 89, 81, 1);
const Color greyColor = Color.fromRGBO(217, 217, 217, 1);

final TextStyle headingStyle = TextStyle(
  fontSize: resWidth(40),
  fontWeight: FontWeight.w700,
);

final TextStyle normalRedStyle = TextStyle(
    fontSize: resWidth(21),
    color: secondaryColor,
    wordSpacing: 2,
    letterSpacing: 1
);

final TextStyle normalRedStyle16 = TextStyle(
    fontSize: resWidth(16),
    color: secondaryColor,
    wordSpacing: 2,
    letterSpacing: 1
);

final TextStyle normalBlackStyle16 = TextStyle(
    fontSize: resWidth(16),
    color: Colors.black,
);



double resWidth(int width){
  return Get.width*(width/428);
}

double resHeight(int height){
  return Get.height*(height/926);
}

SizedBox resHeightBox(int height){
  return SizedBox(
    height: Get.height*(height/926),
  );
}