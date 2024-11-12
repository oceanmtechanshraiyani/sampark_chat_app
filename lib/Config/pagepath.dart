import 'package:get/route_manager.dart';
import 'package:sampark_chat_app/Pages/Auth/authpage.dart';
import 'package:sampark_chat_app/Pages/Homepage/homepage.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => Authpage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/homePage",
    page: () => Homepage(),
    transition: Transition.rightToLeft,
  ),
];
