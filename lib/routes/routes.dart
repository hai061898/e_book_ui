import 'package:ebook/pages/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class RoutesName {
  static final WELCOME = '/';
  static final HOME = '/home';
  static final DETAIL = '/detail';
}

class RoutesPages {
  static final routes = [
    GetPage(name: RoutesName.WELCOME, page: ()=>WelcomeScreen()),
    // GetPage(name: RoutesName.HOME, page: ()=>HomeScreen()),
    // GetPage(name: RoutesName.DETAIL, page: ()=>DetailScreen()),
  ];

}
