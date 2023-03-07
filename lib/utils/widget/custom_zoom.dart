import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomZoom {
  /// iamge [0:network 1.file 2.asset]
  Future<Widget?> zoomImage({required int imageType, required String imagePath,}) {
    return Get.dialog<Widget>(
        Center(
          child: Material(
            color: Get.theme.scaffoldBackgroundColor,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(20.0.r),
            child: Container(
              width: 360.0.w,
              height: 300.0.h,
              decoration: BoxDecoration(
                color: const Color(0x11000000),
                border: Border.all(width: 1.0.w, color: Colors.grey,),
                borderRadius: BorderRadius.circular(20.0.r),
              ),
              child: Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget>[
                  const Text("预览图像"),
                  Container(
                    margin: EdgeInsets.only(top: 5.0.h, bottom: 15.0.h,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (imageType == 0)
                          Image.network(imagePath, fit: BoxFit.fill,)
                        else if (imageType == 1)
                          Image.file(File(imagePath), fit: BoxFit.fill,)
                        else if (imageType == 2)
                          Image.asset(imagePath, fit: BoxFit.fill,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}


