import 'package:get/get.dart';

import 'app_path.dart';
import '/pages/pages.dart';
import '/app/bindings/bindings.dart';
// import '/app/middlewares/middlewares.dart';

class RouteConfig {
  // 404 路由
  static final unknownRoute =  GetPage(name: Routes.notFound, page: ()=> const NotFoundPage(),);

  static final List<GetPage> getPages = [
    /// 认证路由组
    GetPage(
      name: Routes.root,
      page: ()=> const SplashPage(),
      // middlewares: [SkipSplashLoginMiddleware(priority: 1),],
      transition: Transition.leftToRightWithFade,
      children: [
        GetPage(name: Routes.login,
          page: ()=> const LoginPage(), binding: LoginBinding(),
          transition: Transition.leftToRightWithFade,
        ),
      ],
    ),

    /// 主页路由组
    GetPage(
      name: Routes.main,
      page: ()=> const MainPage(), binding: MainBinding(),
      transition: Transition.leftToRightWithFade,
      children: [
        /// personal
        // GetPage(
        //   name: Routes.settings,
        //   page: ()=> const SettingsPage(), binding: SettingsBinding(),
        //   transition: Transition.leftToRightWithFade,
        //   children: [
        //     GetPage(
        //       name: Routes.accountManager,
        //       page: ()=> const AccountManagerPage(),
        //       transition: Transition.leftToRightWithFade,
        //     ),
        //     GetPage(
        //       name: Routes.accountSafe,
        //       page: ()=> const AccountSafePage(),
        //       transition: Transition.leftToRightWithFade,
        //     ),
        //     GetPage(
        //       name: Routes.onlineDevice,
        //       page: ()=> const OnlineDevicePage(),
        //       transition: Transition.leftToRightWithFade,
        //     ),
        //   ],
        // ),
        // GetPage(
        //   name: Routes.qrcode,
        //   page: ()=> const QrcodePage(),
        // ),
        // GetPage(
        //     name: Routes.personalInfo,
        //     page: ()=> const ShowPersonalInfoPage(), binding: PersonalInfoBinding(),
        //     transition: Transition.leftToRightWithFade,
        //     children: [
        //       GetPage(
        //         name: Routes.modifyInfo,
        //         page: ()=> const ModifyInfoPage(),
        //         transition: Transition.leftToRightWithFade,
        //       ),
        //     ]
        // ),
        //
        // /// friends
        // GetPage(
        //   name: Routes.searchUser,
        //   page: ()=> const SearchUserPage(), binding: SearchUserBinding(),
        //   transition: Transition.leftToRightWithFade,
        //   children: [
        //     GetPage(
        //       name: Routes.userInfo,
        //       page: ()=> const UserInfoPage(),
        //       transition: Transition.leftToRightWithFade,
        //     ),
        //   ],
        // ),
        // GetPage(
        //   name: Routes.addUser,
        //   page: ()=> const AddUserPage(), binding: ApplyBinding(),
        //   transition: Transition.leftToRightWithFade,
        // ),
        // GetPage(
        //   name: Routes.sortName,
        //   page: ()=> const ClassifyNamePage(), binding: ClassifyBinding(),
        //   transition: Transition.leftToRightWithFade,
        // ),
        // GetPage(
        //   name: Routes.verifyUser,
        //   page: ()=> const VerifyUserPage(), binding: VerifyBinding(),
        //   transition: Transition.leftToRightWithFade,
        // ),
        // GetPage(
        //   name: Routes.personalMessage,
        //   page: ()=> const PersonalMessagePage(), binding: MessagesBinding(),
        //   transition: Transition.leftToRightWithFade,
        // ),
        // GetPage(
        //   name: Routes.fullTextEdit,
        //   page: ()=> const FullTextEditPage(), binding: MessagesBinding(),
        //   transition: Transition.leftToRightWithFade,
        // ),

      ],
    ),
  ];
}