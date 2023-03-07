import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title ,required this.leftWidget, required this.rightWidget, required this.bgcolorEnable}) : super(key: key);
  final bool bgcolorEnable;
  final String title;
  final dynamic leftWidget, rightWidget;

  @override
  Widget build(BuildContext context) {
    return (GetPlatform.isLinux || GetPlatform.isMacOS || GetPlatform.isWindows)
      ? Container(
          height: 25.0,
          color: Theme.of(context).backgroundColor,
          child: WindowBorder(
            width: 1.0,
            color: Colors.red,
            child: WindowTitleBarBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: MoveWindow(child: Center(child: Text(title),),)),
                  const WindowButtons()
                ],
              ),
            ),
          ),
      )
      : Container(
          height: 40.0.h + ScreenUtil().statusBarHeight,
          width: double.infinity,
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          decoration: BoxDecoration(
            color: bgcolorEnable == false ? Theme.of(context).scaffoldBackgroundColor : Theme.of(context).backgroundColor,
            border: Border.all(width: 0.0, color: Colors.transparent),
          ),
          child: Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              leftWidget == null
                  ? Container(width: 55.0.w, margin: EdgeInsets.only(left: 10.0.w), child: SizedBox(width: 55.0.w,),)
                  : Container(width: 55.0.w, margin: EdgeInsets.only(left: 10.0.w), child: leftWidget,),
              Text(title, style: TextStyle(fontSize: 20.0.sp, color: Colors.white,),),
              rightWidget == null
                  ? Container(width: 55.0.w,margin: EdgeInsets.only(right: 10.0.w),child: SizedBox(width: 55.0.w,),)
                  : Container(width: 55.0.w,margin: EdgeInsets.only(right: 10.0.w),child: rightWidget,),
            ],
          )
      );
  }

  @override
  Size get preferredSize => Size(double.infinity, 38.h);
}

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}

final buttonColors = WindowButtonColors(
    iconNormal: const Color(0xFF805306),
    mouseOver: const Color(0xFFF6A00C),
    mouseDown: const Color(0xFF805306),
    iconMouseOver: const Color(0xFF805306),
    iconMouseDown: const Color(0xFFFFD500));

final closeButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: const Color(0xFFB71C1C),
    iconNormal: const Color(0xFF805306),
    iconMouseOver: Colors.white);