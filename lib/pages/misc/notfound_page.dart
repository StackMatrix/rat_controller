import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/utils/utils.dart';
import '/routes/routes.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appbarWidget: const CustomAppBar(
        title: "路由没有找到", leftWidget: null, rightWidget: null, bgcolorEnable: false,
      ),
      bodyWidget: ListTile(
        title: const Text("返回登陆页面"),
        subtitle: const Text('发生未知错误，请重新登陆'),
        onTap: () => Get.offAllNamed(Routes.login),
      ),
      tabBarWidget: null,
    );
  }
}