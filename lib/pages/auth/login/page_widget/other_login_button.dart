import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherLoginButton extends StatelessWidget {
  const OtherLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0.w,
      margin: EdgeInsets.only(bottom: 15.0.h,),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.attachment,
                color: Colors.blueGrey,
                size: 19.0.sp,
              ),
              const Text('其他登陆方式',
                style: TextStyle(
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5.0.h,
              left: 65.0.w,
              right: 65.0.w,
            ),
            child: Divider(
              height: 3.0.h,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                iconSize: 24.0.sp,
                padding: const EdgeInsets.all(0.0),
                icon: const Icon(
                  IconData(0xe609, fontFamily: 'tencent_icon_ttf'),
                  color: Color.fromRGBO(255, 100, 100, 0.5),
                ),
                splashRadius: 25.0.r,
                tooltip: 'QQ',
                onPressed: () => debugPrint('点击了QQ登录.'),
              ),
              IconButton(
                iconSize: 25.0,
                padding: const EdgeInsets.all(0.0),
                icon: const Icon(
                  IconData(0xe622, fontFamily: 'tencent_icon_ttf'),
                  color: Color.fromRGBO(100, 255, 100, 0.5),
                ),
                splashRadius: 25.0.r,
                tooltip: '微信',
                onPressed: () => debugPrint('点击了微信登录.'),
              ),
            ],
          )
        ],
      ),
    );
  }
}