import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPrompt {
  Future<void> prompt(String msg) async {
    Get.snackbar('提示',
      msg,
      snackPosition: SnackPosition.BOTTOM,
      borderWidth: 1.0,
      margin: EdgeInsets.only(left: 35.w, right: 35.w, bottom: 50.h),
      animationDuration: const Duration(milliseconds: 300),
      duration: const Duration(milliseconds: 1500),
      //backgroundColor: Color.fromRGBO(200, 200, 200, 0.8),
    );
  }
}


