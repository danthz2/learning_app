// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import 'package:learning_app/app/modules/account/bindings/account_binding.dart';
import 'package:learning_app/app/modules/account/views/account_view.dart';
import 'package:learning_app/app/modules/course/bindings/course_binding.dart';
import 'package:learning_app/app/modules/course/views/course_view.dart';
import 'package:learning_app/app/modules/home/bindings/home_binding.dart';
import 'package:learning_app/app/modules/home/views/home_view.dart';
import 'package:learning_app/app/modules/login/bindings/login_binding.dart';
import 'package:learning_app/app/modules/login/views/login_view.dart';
import 'package:learning_app/app/modules/message/bindings/message_binding.dart';
import 'package:learning_app/app/modules/message/views/message_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.COURSE,
      page: () => CourseView(),
      binding: CourseBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => MessageView(),
      binding: MessageBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
  ];
}
