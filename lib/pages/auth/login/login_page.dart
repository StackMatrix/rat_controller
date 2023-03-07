import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'custom_body.dart';
import '/utils/utils.dart';

class LoginPage extends GetView {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      appbarWidget: CustomAppBar(
          title: '登陆',
          leftWidget: null,
          rightWidget: null,
          bgcolorEnable: true,
        ),
      bodyWidget: Center(
        child: CustomBody(),
      ),
      tabBarWidget: CustomTail(tailWidget: null),
    );
  }
}