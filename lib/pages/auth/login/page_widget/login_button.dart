import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/app/handlers/handlers.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late LoginAction loginAction = Get.find<LoginAction>();

    return Container(
      width: 300.0.w, height: 42.0.h,
      margin: EdgeInsets.only(top: 25.0.h,),
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: TextStyle(fontSize: 18.0.sp, fontWeight: FontWeight.bold, letterSpacing: 12.0.sp,),
        ),
        onPressed: () => loginAction.loginButtonOnClick(),
        child: Text('连接'.tr),
      ),
    );
  }
}