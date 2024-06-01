import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../constants/theme.dart';

class OnboardPage1 extends StatelessWidget {
  const OnboardPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      // color: colorSecondary,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 1,
            // right: 20,
            child: Image.asset(
              "assets/images/welcome_onboard.png",
              // height: 1000,
              width: 100.w,
            ),
          ),
          Positioned(
            top: 200,
            right: 90,
            child: Image.asset(
              "assets/images/smile_vector.png",
              // height: 100.h,
              width: 100.w,
            ),
          ),
          Positioned(
            top: 100,
            left: -75,
            // right: 0,
            child: Image.asset(
              "assets/images/image_onboard1.png",
              // height: 100.h,
              width: 150.w,
            ),
          ),
          Positioned(
            top: 400,
            // right: 20,
            child: Image.asset(
              "assets/images/nike_logo.png",
              width: 100.w,
            ),
          ),
          Positioned(
            top: 300,
            left: 100,
            child: Image.asset(
              "assets/images/vector_onboard1.png",
              width: 100.w,
            ),
          ),
          Positioned(
            bottom: 0.5,
            right: 100,
            child: Image.asset(
              "assets/images/vector_onboard2.png",
              width: 100.w,
            ),
          ),
        ],
      ),
    );
  }
}
