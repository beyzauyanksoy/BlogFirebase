import 'package:firebase_uygulama/modules/register/register_binding.dart';
import 'package:firebase_uygulama/modules/register/register_screen.dart';
import 'package:get/get.dart';

import '../modules/blog/blog_home.dart';
import '../modules/blog/blog_home_bindings.dart';
import '../modules/blogContents/blog_contents_binding.dart';
import '../modules/blogContents/blog_contents_screen.dart';
import '../modules/login/home_screen.dart';
import '../modules/login/login_binding.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => HomePage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.BLOGHOME,
      page: () => BlogHome(),
      binding: BlogHomeBinding(),
    ),
       GetPage(
      name: Routes.CONTENTS,
      page: () => BlogContents(),
      binding: BlogContentsBinding(),
    ),
  ];
}
