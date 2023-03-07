import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animations/loading_animations.dart';

class CustomAnimate {
  // 饿汉式的单例模式，在类加载的时候，instance 静态实例已经创建并初始化好了
  CustomAnimate._privateConstructor();
  static final CustomAnimate _instance = CustomAnimate._privateConstructor();
  static CustomAnimate get instance => _instance;

  Future<Widget?> loadingAnimate() async{
    return Get.dialog<Widget>(
      Center(
        child: LoadingBouncingGrid.square(
          size: 60.0.sp,
          borderSize: 3.0.r,
          borderColor: Colors.white,
          backgroundColor: Get.theme.backgroundColor,
          duration: const Duration(milliseconds: 450),
        ),
      ),
      barrierColor: Colors.transparent,
      barrierDismissible: false,
      // ScaffoldReuse(bodyWidget: Center(
      //   child: Material(
      //     color: Colors.transparent,
      //     elevation: 10.0,
      //     borderRadius: BorderRadius.circular(20.0),
      //     child: Container(
      //       width: 256,
      //       height: 256,
      //       decoration: BoxDecoration(
      //         color: const Color(0x11000000),
      //         border: Border.all(width: 1.0,color: Colors.grey,),
      //       ),
      //       child: Flex(
      //         direction: Axis.vertical,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: <Widget>[
      //           //Center(child: Lottie.asset('lib/public/assets/json/loading_animate.json', height: 200,),),
      //           Center(
      //             child: LoadingBouncingGrid.square(
      //               size: 60.0,
      //               borderSize: 3.0,
      //               borderColor: Colors.white,
      //               backgroundColor: Colors.teal,
      //               duration: const Duration(milliseconds: 1000),
      //             ),
      //           ),
      //           const SizedBox(height: 5,),
      //           const Center(
      //             child: Text('加载中',
      //               style: TextStyle(
      //                   fontSize: 18,
      //                   color: Colors.grey
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ), tabBarWidget: null,),
    );
  }

  Future<void> closeAnimate() async{
    Future.delayed(const Duration(milliseconds: 280)).then((value) async {
      Get.back();
    });

  }
}

