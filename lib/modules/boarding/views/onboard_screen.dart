import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:get/get.dart';
import 'package:nike_application/modules/boarding/views/onboard_page1.dart';
import 'package:nike_application/modules/boarding/views/onboard_page2.dart';
import 'package:nike_application/modules/boarding/views/onboard_page3.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../constants/theme.dart';
import '../../../routes/routes.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: OnBoardingSlider(
        pageBackgroundColor: colorSecondary,
        headerBackgroundColor: colorSecondary,
        finishButtonText: 'Login',
        finishButtonTextStyle: TextStyle(color: Colors.black),
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Colors.white,
        ),
        onFinish: () => Get.toNamed(RouteName.login),
        skipIcon: Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
        skipTextButton: Text(
          'Skip',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Text(
          'Login',
          style: TextStyle(
            fontSize: 16,
            color: colorSecondary,
            fontWeight: FontWeight.w600,
          ),
        ),
        background: [
          Container(),
          Container(),
          Container(),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          OnboardPage1(),
          OnboardPage2(),
          OnboardPage3(),
        ],
      ),
    );
  }
}
