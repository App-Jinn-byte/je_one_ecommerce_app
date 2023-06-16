
import 'package:je_one_ecommerce_app/screens/home_screen_pages/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:je_one_ecommerce_app/screens/splash.dart';

class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String forgotPassword = '/forgotPassword';
  static const String bottomNavigation = '/bottomNavigation';

  static final routes = {
    splash: (context) => const Splash(),
    bottomNavigation: (context) => const BottomNavigationScreen()
  };
}
