import 'package:get/get.dart';
import 'package:signature_stayle/ui/screen/splashscreen/splash_screen.dart';
import '../ui/screen/drawer/contact_screen.dart';
import '../ui/screen/drawer/resources_screen.dart';
import '../ui/screen/drawer/speaking_screen.dart';
import '../ui/screen/drawer/style_screen.dart';
import '../ui/screen/home/home_screen.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(name: SplashScreen.routeName, page: () => const SplashScreen()),
  GetPage(name: HomeScreen.routeName, page: () => const HomeScreen()),
  GetPage(name: ReSourcesScreen.routeName, page: () => const ReSourcesScreen()),
  GetPage(name: SpeakingScreen.routeName, page: () => const SpeakingScreen()),
  GetPage(name: ContactScreen.routeName, page: () => const ContactScreen()),
  GetPage(name: StyleScreen.routeName, page: () => const StyleScreen()),
];
