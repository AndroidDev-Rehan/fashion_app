import 'package:fashion_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({Key? key, required this.onPressed, this.text, this.child, this.textStyle, this.textColor, this.expanded = true, this.horMargin, this.height, this.backColor}) : super(key: key);

  final void Function() onPressed;
  final String? text;
  final Widget? child;
  final TextStyle? textStyle;
  final Color? textColor;
  final Color? backColor;

   final bool expanded;
  final double? horMargin;
  final double? height;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horMargin ?? 0),
      child: SizedBox(
        height: height ?? (expanded? resHeight(60) : resHeight(50)),
        width: expanded ? double.infinity : resWidth(180),
        child: ElevatedButton(
            onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: backColor ?? primaryColor,
          ),
            child: child ?? Text(text ?? "button text missing", style: textStyle ?? TextStyle(color: textColor ?? Colors.black, fontSize: resWidth(20), fontWeight: FontWeight.w500, ),),
        ),
      ),
    );
  }
}

