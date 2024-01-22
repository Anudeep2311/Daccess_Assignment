import 'package:flutter/material.dart';

class SmallButtons extends StatelessWidget {
  SmallButtons(
      {super.key,
      required this.text,
      required this.onPressed,
      this.height,
      this.width,
      required this.borderColor,
      this.backgroundColor,
      this.textColor});
  Function() onPressed;
  final String text;
  final double? height;
  final double? width;
  final Color borderColor;
  final MaterialStatePropertyAll<Color>? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: backgroundColor,
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(color: borderColor),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          )),
    );
  }
}
