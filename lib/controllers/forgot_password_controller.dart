import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final TextEditingController emailTextController = TextEditingController();

  @override
  void onInit() {
    print("Sign In Sign Up Screen is Start");
    super.onInit();
  }

  @override
  void onClose() {
    emailTextController.dispose();
    super.onClose();
  }
}
