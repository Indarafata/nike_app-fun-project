import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_application/constants/theme.dart';
import 'package:nike_application/widget/button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:nike_application/controllers/forgot_password_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ForgotPasswordController>();

    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        // reverse: true,
        child: Padding(
          padding: EdgeInsets.only(
            right: defaultPadding,
            left: defaultPadding,
            top: 10.h,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Forgot Password",
                  style: GoogleFonts.raleway(
                    fontSize: 8.w,
                    fontWeight: bold,
                    color: colorBlack,
                  ),
                ),
                Text(
                  "Enter Your Email Account To Reset",
                  style: GoogleFonts.poppins(
                    fontSize: 4.w,
                    fontWeight: light,
                    color: colorBlack,
                  ),
                ),
                Text(
                  "Your Password",
                  style: GoogleFonts.poppins(
                    fontSize: 4.w,
                    fontWeight: light,
                    color: colorBlack,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextFormField(
                  controller: controller.emailTextController,
                  cursorColor: colorDarkGrey,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: colorGrey,
                    hintText: "email",
                    hintStyle: TextStyle(color: colorDarkGrey),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(defaultBorderRadius)),
                      borderSide: BorderSide(
                        color: colorGrey,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(defaultBorderRadius)),
                      borderSide: BorderSide(
                        color: colorGrey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Button(
                  height: 6.h,
                  width: 100.w,
                  onTap: () {},
                  colorBg: colorPrimary,
                  label: "Reset Password",
                  textColor: colorWhite,
                ),
              ]),
        ),
      ),
    );
  }
}
