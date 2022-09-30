import 'package:fashion_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.iconData, required this.hintText}) : super(key: key);

  final IconData iconData;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor("#D9D9D9")
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(iconData, size: resWidth(26), color: Colors.black,),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black, fontSize: resWidth(20)),
          border: const OutlineInputBorder(),
          isDense: true,
          contentPadding: const EdgeInsets.only(left: 20, top: 13, bottom: 13),
        ) ,

      ),
    );
  }
}
