import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../constants/theme.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.height,
      required this.width,
      required this.onTap,
      required this.colorBg,
      required this.label,
      required this.textColor,
      this.image});

  final double height;
  final double width;
  final Function()? onTap;
  final Color colorBg;
  final String label;
  final Color textColor;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: colorBg,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(defaultBorderRadius), // <-- Radius
          ),
        ),
        child: image != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image!,
                    width: 10.w,
                    // width: 100,
                  ),
                  Text(
                    label,
                    style: fontNunito.copyWith(
                      color: textColor,
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                ],
              )
            : Text(
                label,
                style: fontNunito.copyWith(
                  color: textColor,
                  fontSize: 14,
                  fontWeight: bold,
                ),
              ),
      ),
    );
  }
}
