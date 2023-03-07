import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/app/controllers/controllers.dart';

class AccountTextField extends StatelessWidget {
  const AccountTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late LoginController loginController = Get.find<LoginController>();

    return Container(
      width: 300.0.w,
      margin: EdgeInsets.only(top: 40.0.h,),
      child: TextField(
        maxLength: 21, cursorWidth: 1.5,
        cursorColor: Colors.grey,
        keyboardType: TextInputType.number,
        controller: loginController.loginState.accountController,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          counterText: '',
          labelText: '主机:端口'.tr,
          hintText: '主机:端口'.tr,
          prefixIcon: Padding(
            padding: EdgeInsetsDirectional.only(start: 8.0.h,),
            child: const Icon(Icons.account_circle_outlined, color: Colors.grey,),
          ),
          suffixIcon: Padding(
            padding: EdgeInsetsDirectional.only(end: 8.0.h,),
            child: IconButton(
              icon: const Icon(Icons.highlight_remove_outlined, color: Colors.grey, size: 23,),
              onPressed: () => loginController.loginState.accountController.clear(),
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10.0.h),
        ),
      ),
    );
  }
}