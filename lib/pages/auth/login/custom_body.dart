import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'page_widget/account_textfield.dart';
import 'page_widget/password_textfield.dart';
import 'page_widget/login_button.dart';
import 'page_widget/regret_button.dart';
import 'page_widget/other_login_button.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.start,
      children:   <Widget>[
        const Spacer(flex: 2,),
        Text("RAT- Controller" ,style:  TextStyle(fontSize: 20.sp),),
        const AccountTextField(),
        const PasswordTextField(),
        ZoomIn(child: const LoginButton()),
        const Spacer(flex: 3,),
      ],
    );
  }
}