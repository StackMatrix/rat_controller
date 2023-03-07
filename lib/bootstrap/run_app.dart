import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/utils/utils.dart';
import '/routes/routes.dart';

class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "rat_controller", //设置标题
      debugShowMaterialGrid: false, //调试显示网格
      showPerformanceOverlay: false, //显示性能叠加
      debugShowCheckedModeBanner: false, //调试显示检查 Banner 消息
      locale: const Locale('zh', 'CN'), //语言翻译
      fallbackLocale: const Locale('en', 'US'), //回调语言翻译
      defaultTransition: Transition.cupertinoDialog, //ios风格的效果（上下进入退出过渡效果）
      theme: ApplicationTheme.black, //设置默认主题
      themeMode: ThemeSwitch().theme, //设置主题模式
      getPages: RouteConfig.getPages, //全部路由
      darkTheme: ApplicationTheme.black, //设置暗黑主题
      initialRoute: Routes.main, //默认路由设置，为 GetMaterialApp 时才使用
      unknownRoute: RouteConfig.unknownRoute, //404页面
      builder: (context, child) {
        // ScreenUtil.init(context, designSize: const Size(414, 739),);
        ScreenUtil.init(context, designSize: const Size(414, 400),); // 初始化屏幕大小

        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), // 设置字体不随系统字体大小变化
          child: child!,
        );
      },
    );
  }
}
