import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_application/constants/theme.dart';
import 'package:nike_application/controllers/login_controller.dart';
import 'package:nike_application/routes/app_pages.dart';
import 'package:nike_application/widget/button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final String label;
    // final TextEditingController emailTextController = TextEditingController();
    // final TextEditingController passwordTextController =
    //     TextEditingController();
    final controller = Get.find<LoginController>();

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
                  "Hello Again!",
                  style: GoogleFonts.raleway(
                    fontSize: 8.w,
                    fontWeight: bold,
                    color: colorBlack,
                  ),
                ),
                Text(
                  "Fill Your Details Or Continue With",
                  style: GoogleFonts.poppins(
                    fontSize: 4.w,
                    fontWeight: light,
                    color: colorBlack,
                  ),
                ),
                Text(
                  "Social Media",
                  style: GoogleFonts.poppins(
                    fontSize: 4.w,
                    fontWeight: light,
                    color: colorBlack,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  width: 100.w,
                  child: Text(
                    "Email Address",
                    style: GoogleFonts.raleway(
                      fontWeight: medium,
                      color: colorBlack,
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 10),
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
                SizedBox(
                  height: 2.5.h,
                ),
                Container(
                  width: 100.w,
                  child: Text(
                    "Password",
                    style: GoogleFonts.raleway(
                      fontWeight: medium,
                      color: colorBlack,
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Obx(
                  () => TextFormField(
                    obscureText: controller.isObsecured.value,
                    controller: controller.passwordTextController,
                    cursorColor: colorDarkGrey,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: colorGrey,
                      suffixIcon: IconButton(
                        onPressed: () => controller.isObsecured.value =
                            !controller.isObsecured.value,
                        icon: Icon(controller.isObsecured.value
                            ? Icons.visibility_off
                            : Icons.visibility),
                        color: colorDarkGrey,
                      ),
                      hintText: "Password",
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
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 3.h, top: 1.h),
                  width: 100.w,
                  child: GestureDetector(
                    onTap: () => Get.toNamed(RouteName.forgotPassword),
                    child: Text(
                      "Recovery Password",
                      textAlign: TextAlign.end,
                      style: GoogleFonts.poppins(
                        fontWeight: light,
                        color: colorBlack,
                      ),
                    ),
                  ),
                ),
                Button(
                  height: 6.h,
                  width: 100.w,
                  onTap: () {
                    controller.login();
                  },
                  colorBg: colorPrimary,
                  label: "Sign In",
                  textColor: colorWhite,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Button(
                  height: 6.h,
                  width: 100.w,
                  onTap: () {
                    controller.login();
                  },
                  colorBg: colorGrey,
                  label: "Sign In With Google",
                  textColor: colorBlack,
                  image: "assets/images/google_icon.png",
                ),
                SizedBox(
                  height: 18.h,
                ),
                GestureDetector(
                  onTap: () => Get.offAllNamed(RouteName.register),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New User? ",
                        style: GoogleFonts.raleway(
                          fontWeight: light,
                          color: colorBlack,
                        ),
                      ),
                      Text(
                        "Create Account",
                        style: GoogleFonts.raleway(
                          fontWeight: medium,
                          color: colorBlack,
                        ),
                      )
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
