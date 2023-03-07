import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/app/handlers/handlers.dart';
import '/app/controllers/controllers.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late LoginAction loginAction = Get.find<LoginAction>();
    late LoginState loginState = Get.find<LoginState>();


    return GetBuilder<LoginController>(
      id: 'passwordWidget',
      builder: (controller){
        return Container(
          width: 300.0.w,
          margin: EdgeInsets.only(top: 30.0.h,),
          child: TextField(
            maxLength: 15, cursorWidth: 1.5,
            cursorColor: Colors.grey,
            obscureText: loginState.passwordObscure,
            keyboardType: TextInputType.text,
            controller: loginState.passwordController,
            decoration: InputDecoration(
              counterText: '',
              labelText: '令牌'.tr,
              hintText: '令牌'.tr,
              prefixIcon: Padding(
                padding: EdgeInsetsDirectional.only(start: 8.0.w,),
                child: Icon(Icons.token_outlined, color: Colors.grey, size: 23.sp,),
              ),
              suffixIcon: Padding(
                padding: EdgeInsetsDirectional.only(end: 8.0.w,),
                child: IconButton(
                  icon: Icon(Icons.remove_red_eye_outlined, color: Colors.grey, size: 23.sp,),
                  onPressed: () => loginAction.passwordObscure(),
                ),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0.h),
            ),
          ),
        );
      },
    );
  }
}