import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/routes/routes.dart';

class RegRetButton extends StatelessWidget {
  const RegRetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      margin: const EdgeInsets.only(top: 25.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              side: const BorderSide(color: Colors.transparent, width: 0.0),
            ),
            onPressed: ()async=> await Get.offNamed(Routes.retrieve),
            child: Text("忘记密码",
              style: TextStyle(
                fontSize: 13.0.sp,
                color: Colors.grey[600],
                letterSpacing: 1.0,
              ),
            ),
          ),
          Text("|",
            style: TextStyle(
              fontSize: 13.0.sp,
              color: Colors.grey,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              side: const BorderSide(color: Colors.transparent, width: 0.0),
            ),
            onPressed: ()async=> await Get.offNamed(Routes.register),
            child: Text("用户注册",
              style: TextStyle(
                fontSize: 13.0.sp,
                color: Colors.grey[600],
                letterSpacing: 1.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}